###############################################################################
# Makefile for the project spitiny
###############################################################################

## General Flags
PROJECT = spitiny

#MCU = attiny44
#MCU = attiny84

MCU = attiny45
#MCU = attiny85

#MCU = attiny461
#MCU = attiny861

## attiny44/84
#F_CPU = 12800000UL
## attiny45/85/461/861 
F_CPU = 16500000UL

AVRDUDE = avrdude
AVRDUDEFLAGS = -c stk500v2 -p $(MCU) -P /dev/ttyACM0
AVRDUDEFLAGSFAST = $(AVRDUDEFLAGS) -B 1
AVRDUDEFLAGSSLOW = $(AVRDUDEFLAGS) -B 5

TARGET = $(PROJECT).elf
CC = avr-gcc

## Options common to compile, link and assembly rules
COMMON = -mmcu=$(MCU)

## Compile options common for all C compilation units.
CFLAGS = $(COMMON)
CFLAGS += -Wall -gdwarf-2 -DF_CPU=$(F_CPU) -Os -fsigned-char
#CFLAGS += -MD -MP -MT $(*F).o -MF dep/$(@F).d 

## Assembly specific flags
ASMFLAGS = $(COMMON)
ASMFLAGS += $(CFLAGS)
ASMFLAGS += -x assembler-with-cpp -Wa,-gdwarf2

## Linker flags
LDFLAGS = $(COMMON)
LDFLAGS += 


## Intel Hex file production flags
HEX_FLASH_FLAGS = -R .eeprom -R .fuse -R .lock -R .signature

HEX_EEPROM_FLAGS = -j .eeprom
HEX_EEPROM_FLAGS += --set-section-flags=.eeprom="alloc,load"
HEX_EEPROM_FLAGS += --change-section-lma .eeprom=0 --no-change-warnings


## Include Directories
INCLUDES =
INCLUDES = -I"." -I"usbdrv" -I"libs-device"

## Objects that must be built in order to link
OBJECTS = main.o usbdrv.o usbdrvasm.o oddebug.o osccal.o 

## Objects explicitly added by the user
LINKONLYOBJECTS = 

## Build
all: $(TARGET) $(PROJECT).hex $(PROJECT).eep $(PROJECT).lss size

## Program
program: $(PROJECT).hex
	$(AVRDUDE) $(AVRDUDEFLAGSFAST) -U flash:w:$^

# For fuses, see http://www.engbedded.com/fusecalc/
fuses:
	$(AVRDUDE) $(AVRDUDEFLAGSSLOW) -U lfuse:w:0xE1:m -U hfuse:w:0xDC:m

## Compile
main.o: main.c
	$(CC) $(INCLUDES) $(CFLAGS) -c  $<

usbdrvasm.o: usbdrv/usbdrvasm.S
	$(CC) $(INCLUDES) $(ASMFLAGS) -c  $<

usbdrv.o: usbdrv/usbdrv.c
	$(CC) $(INCLUDES) $(CFLAGS) -c  $<

oddebug.o: usbdrv/oddebug.c
	$(CC) $(INCLUDES) $(CFLAGS) -c  $<

osccal.o: libs-device/osccal.c
	$(CC) $(INCLUDES) $(CFLAGS) -c  $<

##Link
$(TARGET): $(OBJECTS)
	 $(CC) $(LDFLAGS) $(OBJECTS) $(LINKONLYOBJECTS) $(LIBDIRS) $(LIBS) -o $(TARGET)

%.hex: $(TARGET)
	avr-objcopy -O ihex $(HEX_FLASH_FLAGS)  $< $@

%.eep: $(TARGET)
	-avr-objcopy $(HEX_EEPROM_FLAGS) -O ihex $< $@ || exit 0

%.lss: $(TARGET)
	avr-objdump -h -S $< > $@

size: ${TARGET}
	@echo
	@avr-size -C --mcu=${MCU} ${TARGET}

## Clean target
.PHONY: clean
clean:
	-rm -rf $(OBJECTS) $(PROJECT).elf dep/* $(PROJECT).hex $(PROJECT).eep $(PROJECT).lss

## Other dependencies
-include $(shell mkdir dep 2>/dev/null) $(wildcard dep/*)
