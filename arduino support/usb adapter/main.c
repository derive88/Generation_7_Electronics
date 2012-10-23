/*
 * Name: main.c
 * Project: AVR USB driver for CDC-SPI on Low-Speed USB
 *              for ATtiny45/85
 * Author: Osamu Tamura
 * Adjusted for Generation 7 Electronics
 * Creation Date: 2010-01-10
 * Copyright: (c) 2010 by Recursion Co., Ltd.
 * Copyright: (c) 2012 by Markus Hitter <mah@jump-ing.de>
 * License: Proprietary, free under certain conditions. See Documentation.
 */

#include <string.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>
#include <avr/wdt.h>
#include <util/delay.h>

#include "usbdrv.h"
#include "oddebug.h"

// ATtiny45/85
#define SPI_DDR     DDRB
#define SPI_PORT    PORTB
#define SPI_PIN     PINB
#define SPI_DI      0
#define SPI_DO      1
#define SPI_SCL     2
#define SPI_SS      5        // b5:Break

#define HW_CDC_BULK_OUT_SIZE     8
#define HW_CDC_BULK_IN_SIZE      8

enum {
  SEND_ENCAPSULATED_COMMAND = 0,
  GET_ENCAPSULATED_RESPONSE,
  SET_COMM_FEATURE,
  GET_COMM_FEATURE,
  CLEAR_COMM_FEATURE,
  SET_LINE_CODING = 0x20,
  GET_LINE_CODING,
  SET_CONTROL_LINE_STATE,
  SEND_BREAK
};

/* USB configuration descriptor */
static PROGMEM char configDescrCDC[] = {
  9,          /* sizeof(usbDescrConfig): length of descriptor in bytes */
  USBDESCR_CONFIG,    /* descriptor type */
  67,
  0,          /* total length of data returned (including inlined descriptors) */
  2,          /* number of interfaces in this configuration */
  1,          /* index of this configuration */
  0,          /* configuration name string index */
#if USB_CFG_IS_SELF_POWERED
  (1 << 7) | USBATTR_SELFPOWER,       /* attributes */
#else
  (1 << 7),                           /* attributes */
#endif
  USB_CFG_MAX_BUS_POWER/2,            /* max USB current in 2mA units */

  /* interface descriptor follows inline: */
  9,          /* sizeof(usbDescrInterface): length of descriptor in bytes */
  USBDESCR_INTERFACE, /* descriptor type */
  0,          /* index of this interface */
  0,          /* alternate setting for this interface */
  USB_CFG_HAVE_INTRIN_ENDPOINT,   /* endpoints excl 0: number of endpoint descriptors to follow */
  USB_CFG_INTERFACE_CLASS,
  USB_CFG_INTERFACE_SUBCLASS,
  USB_CFG_INTERFACE_PROTOCOL,
  0,          /* string index for interface */

  /* CDC Class-Specific descriptor */
  5,           /* sizeof(usbDescrCDC_HeaderFn): length of descriptor in bytes */
  0x24,        /* descriptor type */
  0,           /* header functional descriptor */
  0x10, 0x01,

  4,           /* sizeof(usbDescrCDC_AcmFn): length of descriptor in bytes */
  0x24,        /* descriptor type */
  2,           /* abstract control management functional descriptor */
  0x06,        /* SEND_BREAK,SET_LINE_CODING,GET_LINE_CODING,SET_CONTROL_LINE_STATE    */

  5,           /* sizeof(usbDescrCDC_UnionFn): length of descriptor in bytes */
  0x24,        /* descriptor type */
  6,           /* union functional descriptor */
  0,           /* CDC_COMM_INTF_ID */
  1,           /* CDC_DATA_INTF_ID */

  5,           /* sizeof(usbDescrCDC_CallMgtFn): length of descriptor in bytes */
  0x24,        /* descriptor type */
  1,           /* call management functional descriptor */
  3,           /* allow management on data interface, handles call management by itself */
  1,           /* CDC_DATA_INTF_ID */

  /* Endpoint Descriptor */
  7,           /* sizeof(usbDescrEndpoint) */
  USBDESCR_ENDPOINT,  /* descriptor type = endpoint */
  0x80|USB_CFG_EP3_NUMBER,        /* IN endpoint number 3 */
  0x03,        /* attrib: Interrupt endpoint */
  8, 0,        /* maximum packet size */
  USB_CFG_INTR_POLL_INTERVAL,        /* in ms */

  /* Interface Descriptor  */
  9,           /* sizeof(usbDescrInterface): length of descriptor in bytes */
  USBDESCR_INTERFACE,           /* descriptor type */
  1,           /* index of this interface */
  0,           /* alternate setting for this interface */
  2,           /* endpoints excl 0: number of endpoint descriptors to follow */
  0x0A,        /* Data Interface Class Codes */
  0,
  0,           /* Data Interface Class Protocol Codes */
  0,           /* string index for interface */

  /* Endpoint Descriptor */
  7,           /* sizeof(usbDescrEndpoint) */
  USBDESCR_ENDPOINT,  /* descriptor type = endpoint */
  0x01,        /* OUT endpoint number 1 */
  0x02,        /* attrib: Bulk endpoint */
  HW_CDC_BULK_OUT_SIZE, 0,        /* maximum packet size */
  0,           /* in ms */

  /* Endpoint Descriptor */
  7,           /* sizeof(usbDescrEndpoint) */
  USBDESCR_ENDPOINT,  /* descriptor type = endpoint */
  0x81,        /* IN endpoint number 1 */
  0x02,        /* attrib: Bulk endpoint */
  HW_CDC_BULK_IN_SIZE, 0,        /* maximum packet size */
  0,           /* in ms */
};


uchar usbFunctionDescriptor(usbRequest_t *rq) {
  if (rq->wValue.bytes[1] == USBDESCR_DEVICE) {
    usbMsgPtr = (uchar *)usbDescriptorDevice;
    return usbDescriptorDevice[0];
  }
  else {  /* must be config descriptor */
    usbMsgPtr = (uchar *)configDescrCDC;
    return sizeof(configDescrCDC);
  }
}

uchar lastTimer0Value; // see osctune.h
static uchar modeBuffer[7];
static uchar sendEmptyFrame;
static uchar intr3Status; /* used to control interrupt endpoint transmissions */

/* ------------------------------------------------------------------------- */
/* ----------------------------- USB interface ----------------------------- */
/* ------------------------------------------------------------------------- */

uchar usbFunctionSetup(uchar data[8]) {
  usbRequest_t *rq = (void *)data;

  /* class request type */
  if ((rq->bmRequestType & USBRQ_TYPE_MASK) == USBRQ_TYPE_CLASS) {
    uchar value;

    if (rq->bRequest == GET_LINE_CODING || rq->bRequest == SET_LINE_CODING ) {
      return 0xff;
      /* GET_LINE_CODING -> usbFunctionRead()  */
      /* SET_LINE_CODING -> usbFunctionWrite() */
    }

    value = rq->wValue.word;
    /* DTR => SPI_SS + 1 */
    if (rq->bRequest == SET_CONTROL_LINE_STATE) {
#if USB_CFG_HAVE_INTRIN_ENDPOINT3
      /*
       * Report serial state (carrier detect). On several Unix platforms,
       * tty devices can only be opened when carrier detect is set.
       */
      if (intr3Status == 0)
        intr3Status = 2;
#endif
      SPI_PORT = (SPI_PORT & ~(1 << (SPI_SS + 1))) | ((value & 1) << (SPI_SS + 1));
    }
    /*  Break => SPI_SS    */
    else if (rq->bRequest == SEND_BREAK)
      SPI_PORT = (SPI_PORT & ~(1 << SPI_SS)) | ((value & 1) << SPI_SS);

    /*  Prepare bulk-in endpoint to respond to early termination   */
    if ((rq->bmRequestType & USBRQ_DIR_MASK) == USBRQ_DIR_HOST_TO_DEVICE)
      sendEmptyFrame  = 1;
  }

  return 0;
}


/* spi buffer */
static uchar rx_buf[HW_CDC_BULK_IN_SIZE];
static uchar tx_buf[HW_CDC_BULK_OUT_SIZE];
static uchar iwptr, uwptr;

/*---------------------------------------------------------------------------*/
/* usbFunctionRead                                                          */
/*---------------------------------------------------------------------------*/
uchar usbFunctionRead(uchar *data, uchar len) {
  memcpy(data, modeBuffer, 7);
  return 7;
}

/*---------------------------------------------------------------------------*/
/* usbFunctionWrite                                                          */
/*---------------------------------------------------------------------------*/
uchar usbFunctionWrite (uchar *data, uchar len) {
  memcpy( modeBuffer, data, 7 );
  return 1;
}

void usbFunctionWriteOut(uchar *data, uchar len) {
  /* host -> spi */
  while (len--)
    tx_buf[uwptr++] = *data++;

  /* postpone receiving next data */
  usbDisableAllRequests();
}


static void hardwareInit(void) {
  /* activate pull-ups except on USB lines */
  USB_CFG_IOPORT = (uchar)~((1 << USB_CFG_DMINUS_BIT) | (1 << USB_CFG_DPLUS_BIT));
  /* all pins input except USB (-> USB reset) */
#ifdef USB_CFG_PULLUP_IOPORT /* use usbDeviceConnect()/usbDeviceDisconnect() if available */
#warning defined
  USBDDR = 0;    /* we do RESET by deactivating pullup */
  usbDeviceDisconnect();
#else
#warning not
  USBDDR = (1 << USB_CFG_DMINUS_BIT) | (1 << USB_CFG_DPLUS_BIT);
#endif

  /* keep 300 mS  */
  _delay_ms(300.0);

#ifdef USB_CFG_PULLUP_IOPORT
  usbDeviceConnect();
#else
  USBDDR    = 0;      /* remove USB reset condition */
#endif
}

int main(void) {
  wdt_disable();
  PRR = 0xCF;     // disable all peripherals except Timer0
  ACSR |= 0x80;   // disable analog comparator and save 70uA
  TCCR0B = 0x03;  // prescaler 64 (see osctune.h)
  odDebugInit();
  hardwareInit();
  usbInit();

  /* set DO, SCL, /SS0, and /SS1 as output  */
  SPI_DDR  |= (1 << SPI_DO) | (1 << SPI_SCL) | (3 << SPI_SS);
  SPI_PORT &= (uchar)~((1 << SPI_DO) | (1 << SPI_SCL));
  SPI_PORT |= (1 << SPI_DI) | (1 << SPI_SS);

  /* SPI mode */
  USICR = (1 << USIWM0) | (1 << USICS1) | (1 << USICLK);

  intr3Status = 0;
  sendEmptyFrame  = 0;

  sei();
  for (;;) {    /* main event loop */
    usbPoll();

    /*  host => device  */
    if (uwptr != 0 && iwptr == 0) {
      if (usbAllRequestsAreDisabled())
        usbEnableAllRequests();

      while (iwptr < uwptr) {
        USIDR = tx_buf[iwptr];
        USISR = (1 << USIOIF);
        do {
          // clk=250kHz
          _delay_us(1.7);
          USICR |= (1 << USITC);
        } while ( ! (USISR & (1 << USIOIF)));
        rx_buf[iwptr++] = USIDR;
      }
      uwptr    = 0;
    }

    /* host <= device */
    if (usbInterruptIsReady() && (iwptr | sendEmptyFrame)) {
      usbSetInterrupt(rx_buf, iwptr);
      sendEmptyFrame = iwptr & HW_CDC_BULK_IN_SIZE;
      iwptr = 0;
    }

#if USB_CFG_HAVE_INTRIN_ENDPOINT3
    /* We need to report rx and tx carrier after open attempt */
    if (intr3Status != 0 && usbInterruptIsReady3()) {
      static uchar serialStateNotification[10] =
                   {0xa1, 0x20, 0, 0, 0, 0, 2, 0, 3, 0};

      if (intr3Status == 2) {
        usbSetInterrupt3(serialStateNotification, 8);
      }
      else {
        usbSetInterrupt3(serialStateNotification+8, 2);
      }
      intr3Status--;
    }
#endif
  }
  return 0;
}

