v 20110115 2
C 38800 43400 1 0 0 ATMEGA644P-1.sym
{
T 40000 47900 5 10 1 1 0 0 1
refdes=U1
T 42026 47300 5 10 0 0 0 0 1
footprint=DIP40_1
T 40500 43500 5 10 1 1 0 5 1
device=ATMEGA644P
}
C 50400 48400 1 0 0 pololustepper-1.sym
{
T 52300 50100 5 10 0 0 0 0 1
device=POLOLUSTEPPER
T 51200 50500 5 10 1 1 0 0 1
refdes=U2
T 52326 49900 5 10 0 0 0 0 1
footprint=POLOLUSTEPPER-1
}
C 45600 49600 1 90 0 5V-plus-1.sym
C 45900 49700 1 0 0 resistor-1.sym
{
T 46200 50100 5 10 0 0 0 0 1
device=RESISTOR
T 46100 50000 5 10 1 1 0 0 1
refdes=R2
T 46100 49500 5 10 1 1 0 0 1
value=1K
T 45900 49700 5 10 0 1 0 0 1
footprint=ACY300_1
}
N 45600 49800 45900 49800 4
N 50400 49000 50200 49000 4
C 52400 48100 1 0 0 gnd-1.sym
C 54000 50500 1 180 0 gnd-1.sym
C 54100 48400 1 180 0 5V-plus-1.sym
C 52300 50600 1 0 0 12V-plus-1.sym
{
T 52600 50600 5 8 1 1 0 0 1
net=Vmot:1
}
N 52500 50000 52500 50600 4
N 53900 50200 53900 49800 4
N 53900 49800 52200 49800 4
N 53900 48800 53900 48400 4
N 52500 48400 52500 48600 4
C 50400 45200 1 0 0 pololustepper-1.sym
{
T 52300 46900 5 10 0 0 0 0 1
device=POLOLUSTEPPER
T 51200 47300 5 10 1 1 0 0 1
refdes=U3
T 52326 46700 5 10 0 0 0 0 1
footprint=POLOLUSTEPPER-1
}
C 45600 46400 1 90 0 5V-plus-1.sym
C 45900 46500 1 0 0 resistor-1.sym
{
T 46200 46900 5 10 0 0 0 0 1
device=RESISTOR
T 46100 46800 5 10 1 1 0 0 1
refdes=R6
T 46100 46300 5 10 1 1 0 0 1
value=1K
T 45900 46500 5 10 0 1 0 0 1
footprint=ACY300_1
}
N 47000 46200 48000 46200 4
N 47000 46400 48000 46400 4
N 45600 46600 45900 46600 4
N 50200 46000 50400 46000 4
N 50400 45800 50200 45800 4
N 47000 46200 47000 46600 4
C 50400 41700 1 0 0 pololustepper-1.sym
{
T 52300 43400 5 10 0 0 0 0 1
device=POLOLUSTEPPER
T 51200 43800 5 10 1 1 0 0 1
refdes=U4
T 52326 43200 5 10 0 0 0 0 1
footprint=POLOLUSTEPPER-1
}
C 45600 42900 1 90 0 5V-plus-1.sym
C 45900 43000 1 0 0 resistor-1.sym
{
T 46200 43400 5 10 0 0 0 0 1
device=RESISTOR
T 46100 43300 5 10 1 1 0 0 1
refdes=R8
T 46100 42800 5 10 1 1 0 0 1
value=1K
T 45900 43000 5 10 0 1 0 0 1
footprint=ACY300_1
}
N 45600 43100 45900 43100 4
N 50200 42500 50400 42500 4
N 50400 42300 50200 42300 4
N 47000 42700 47000 43100 4
C 50400 38500 1 0 0 pololustepper-1.sym
{
T 52300 40200 5 10 0 0 0 0 1
device=POLOLUSTEPPER
T 51200 40600 5 10 1 1 0 0 1
refdes=U5
T 52326 40000 5 10 0 0 0 0 1
footprint=POLOLUSTEPPER-1
}
C 45600 39700 1 90 0 5V-plus-1.sym
C 45900 39800 1 0 0 resistor-1.sym
{
T 46200 40200 5 10 0 0 0 0 1
device=RESISTOR
T 46100 40100 5 10 1 1 0 0 1
refdes=R10
T 46100 39600 5 10 1 1 0 0 1
value=1K
T 45900 39800 5 10 0 1 0 0 1
footprint=ACY300_1
}
N 45600 39900 45900 39900 4
N 50200 39300 50400 39300 4
N 50400 39100 50200 39100 4
N 47000 39500 47000 39900 4
C 30000 38200 1 0 0 resistor-1.sym
{
T 30300 38600 5 10 0 0 0 0 1
device=RESISTOR
T 30200 38500 5 10 1 1 0 0 1
refdes=R11
T 30200 38100 5 10 1 1 0 0 1
value=1K
T 30000 38200 5 10 0 1 0 0 1
footprint=ACY300_1
}
C 30000 41900 1 0 0 resistor-1.sym
{
T 30300 42300 5 10 0 0 0 0 1
device=RESISTOR
T 30200 42200 5 10 1 1 0 0 1
refdes=R12
T 30200 41800 5 10 1 1 0 0 1
value=1K
T 30000 41900 5 10 0 1 0 0 1
footprint=ACY300_1
}
C 25300 42800 1 0 0 led-1.sym
{
T 26100 43200 5 10 1 1 0 0 1
refdes=LED2
T 25300 42800 5 10 0 1 0 0 1
footprint=LED3_1
T 26100 44000 5 10 0 0 0 0 1
description=green
T 26100 43600 5 10 0 0 0 0 1
symversion=0.1
}
C 23800 42900 1 0 0 resistor-1.sym
{
T 24100 43300 5 10 0 1 0 0 1
device=RESISTOR
T 24000 43200 5 10 1 1 0 0 1
refdes=R14
T 24000 42800 5 10 1 1 0 0 1
value=560R
T 23800 42900 5 10 0 0 0 0 1
footprint=ACY300_1
}
C 23000 44200 1 0 0 12V-plus-1.sym
{
T 23300 44200 5 8 1 1 0 0 1
net=Vheat:1
}
C 29700 40700 1 0 0 gnd-1.sym
N 25300 43000 24700 43000 4
N 23200 43000 23200 44200 4
N 44400 48800 50400 48800 4
N 44600 48600 50400 48600 4
N 44400 45000 44400 48800 4
N 41800 44700 44600 44700 4
N 44600 44700 44600 48600 4
N 50400 45600 42600 45600 4
N 50400 45400 42400 45400 4
N 50400 42100 43800 42100 4
N 43800 42100 43800 48300 4
N 50400 41900 43600 41900 4
N 43600 41900 43600 48000 4
N 41800 48900 44200 48900 4
N 50400 38900 44200 38900 4
N 44200 38900 44200 48900 4
N 50400 38700 44000 38700 4
N 44000 38700 44000 48600 4
N 44400 45000 41800 45000 4
N 31000 42000 31000 48600 4
N 42300 34200 42300 34600 4
N 40700 34200 40700 34600 4
N 40700 32500 40700 32800 4
C 33900 32700 1 0 0 gnd-1.sym
N 34000 33000 34000 35500 4
C 35200 38900 1 0 0 5V-plus-1.sym
N 37200 50000 37200 46800 4
N 39900 36000 39900 38600 4
N 41800 43800 42300 43800 4
N 45900 34200 45900 36400 4
N 31300 48300 31300 38300 4
N 40700 36500 40700 36800 4
N 39900 36800 42300 36800 4
N 40700 35600 40700 34600 4
N 41800 46500 42000 46500 4
N 42000 42700 42000 46500 4
C 42400 46700 1 90 0 gnd-1.sym
N 41800 46800 42100 46800 4
C 35600 44600 1 180 0 crystal-1.sym
{
T 35400 44300 5 10 1 1 180 0 1
refdes=U6
T 35600 44800 5 10 1 1 180 0 1
value=20 MHz
T 35600 44600 5 10 0 1 0 0 1
footprint=CRYSTAL_AS
T 35400 43900 5 10 0 0 180 0 1
symversion=0.1
}
C 34700 43900 1 270 0 capacitor-1.sym
{
T 35400 43700 5 10 0 0 270 0 1
device=CAPACITOR
T 35200 43700 5 10 1 1 270 0 1
refdes=C3
T 35600 43700 5 10 0 0 270 0 1
symversion=0.1
T 34500 43700 5 10 1 1 270 0 1
value=22 pF
T 34700 43900 5 10 0 1 0 0 1
footprint=ACY100
}
C 35400 43900 1 270 0 capacitor-1.sym
{
T 36100 43700 5 10 0 0 270 0 1
device=CAPACITOR
T 35900 43700 5 10 1 1 270 0 1
refdes=C4
T 36300 43700 5 10 0 0 270 0 1
symversion=0.1
T 35200 43700 5 10 1 1 270 0 1
value=22 pF
T 35400 43900 5 10 0 1 0 0 1
footprint=ACY100
}
C 35500 42000 1 0 0 gnd-1.sym
N 35600 42300 35600 43000 4
N 34900 43000 34900 42600 4
N 35600 42600 34900 42600 4
C 38600 46600 1 270 0 gnd-1.sym
N 38900 46500 39200 46500 4
C 23600 56000 1 270 0 connector6-1.sym
{
T 25400 54200 5 10 0 0 270 0 1
device=CONNECTOR_6
T 23900 56100 5 10 1 1 0 0 1
refdes=SERIAL
T 23600 56000 5 10 0 1 0 0 1
footprint=100-6-1
}
C 25200 53700 1 0 0 gnd-1.sym
C 24900 53700 1 0 0 gnd-1.sym
N 25000 54000 25000 54300 4
N 25300 54000 25300 54300 4
C 24000 53400 1 90 0 capacitor-1.sym
{
T 23300 53600 5 10 0 0 90 0 1
device=CAPACITOR
T 23500 53500 5 10 1 1 90 0 1
refdes=C5
T 23100 53600 5 10 0 0 90 0 1
symversion=0.1
T 24000 53400 5 10 0 1 0 0 1
footprint=ACY100
T 23500 54000 5 10 1 1 90 0 1
value=0.1 uF
}
C 22800 57300 1 180 0 gnd-1.sym
N 22700 56600 22700 57000 4
C 41300 38000 1 270 0 led-1.sym
{
T 41700 37200 5 10 1 1 270 0 1
refdes=LED3
T 41300 38000 5 10 0 1 0 0 1
footprint=LED3_1
T 42500 37200 5 10 0 0 270 0 1
description=yellow
T 42100 37200 5 10 0 0 270 0 1
symversion=0.1
}
C 41400 36500 1 270 0 resistor-1.sym
{
T 41800 36200 5 10 0 0 270 0 1
device=RESISTOR
T 41700 36300 5 10 1 1 270 0 1
refdes=R16
T 41200 36300 5 10 1 1 270 0 1
value=1K
T 41400 36500 5 10 0 1 0 0 1
footprint=ACY300_1
}
N 41500 38300 39900 38300 4
N 35000 36500 35000 36800 4
N 35000 36800 35400 36800 4
C 33800 36400 1 270 0 led-1.sym
{
T 34200 35600 5 10 1 1 270 0 1
refdes=LED4
T 33800 36400 5 10 0 1 0 0 1
footprint=LED3_1
T 34400 35600 5 10 0 0 270 0 1
description=green
T 34600 35600 5 10 0 0 270 0 1
symversion=0.1
}
C 33900 37900 1 270 0 resistor-1.sym
{
T 34300 37600 5 10 0 0 270 0 1
device=RESISTOR
T 34200 37700 5 10 1 1 270 0 1
refdes=R18
T 33700 37700 5 10 1 1 270 0 1
value=1K
T 33900 37900 5 10 0 1 0 0 1
footprint=ACY300_1
}
N 34000 36400 34000 37000 4
N 34000 37900 34000 38400 4
N 34000 38400 35400 38400 4
N 35000 34600 35000 35600 4
N 34000 34600 42300 34600 4
N 35400 32100 35400 38900 4
N 24400 45600 39200 45600 4
N 24400 45600 24400 54300 4
N 39200 45300 24100 45300 4
N 24100 45300 24100 54300 4
N 41500 38300 41500 38000 4
N 41500 37100 41500 36500 4
C 54000 47300 1 180 0 gnd-1.sym
C 52300 47400 1 0 0 12V-plus-1.sym
{
T 52600 47400 5 8 1 1 0 0 1
net=Vmot:1
}
N 52500 46800 52500 47400 4
N 53900 47000 53900 46600 4
N 53900 46600 52200 46600 4
C 52800 46600 1 0 0 capacitor-1.sym
{
T 53000 47300 5 10 0 0 0 0 1
device=CAPACITOR
T 53000 47100 5 10 1 1 0 0 1
refdes=C8
T 53000 47500 5 10 0 0 0 0 1
symversion=0.1
T 53000 46400 5 10 1 1 0 0 1
value=0.1 uF
T 52800 46600 5 10 0 1 0 0 1
footprint=ACY100
}
C 54000 43800 1 180 0 gnd-1.sym
C 52300 43900 1 0 0 12V-plus-1.sym
{
T 52600 43900 5 8 1 1 0 0 1
net=Vmot:1
}
N 52500 43300 52500 43900 4
N 53900 43500 53900 43100 4
N 53900 43100 52200 43100 4
C 52800 43100 1 0 0 capacitor-1.sym
{
T 53000 43800 5 10 0 0 0 0 1
device=CAPACITOR
T 53000 43600 5 10 1 1 0 0 1
refdes=C9
T 53000 44000 5 10 0 0 0 0 1
symversion=0.1
T 53000 42900 5 10 1 1 0 0 1
value=0.1 uF
T 52800 43100 5 10 0 1 0 0 1
footprint=ACY100
}
N 52200 43300 52800 43300 4
N 53700 43300 53900 43300 4
C 54000 40600 1 180 0 gnd-1.sym
C 52300 40700 1 0 0 12V-plus-1.sym
{
T 52600 40700 5 8 1 1 0 0 1
net=Vmot:1
}
N 52500 40100 52500 40700 4
N 53900 40300 53900 39900 4
N 53900 39900 52200 39900 4
C 52800 39900 1 0 0 capacitor-1.sym
{
T 53000 40600 5 10 0 0 0 0 1
device=CAPACITOR
T 53000 40400 5 10 1 1 0 0 1
refdes=C10
T 53000 40800 5 10 0 0 0 0 1
symversion=0.1
T 53000 39700 5 10 1 1 0 0 1
value=0.1 uF
T 52800 39900 5 10 0 1 0 0 1
footprint=ACY100
}
N 52200 40100 52800 40100 4
N 53700 40100 53900 40100 4
N 47000 49400 47000 49800 4
C 52800 48400 1 0 0 capacitor-1.sym
{
T 53000 49100 5 10 0 0 0 0 1
device=CAPACITOR
T 53000 48900 5 10 1 1 0 0 1
refdes=C11
T 53000 49300 5 10 0 0 0 0 1
symversion=0.1
T 53000 48200 5 10 1 1 0 0 1
value=0.1 uF
T 52800 48400 5 10 0 1 0 0 1
footprint=ACY100
}
N 53900 48800 52200 48800 4
N 52200 48600 52800 48600 4
N 53700 48600 53900 48600 4
C 52400 44900 1 0 0 gnd-1.sym
C 54100 45200 1 180 0 5V-plus-1.sym
N 53900 45600 53900 45200 4
N 52500 45200 52500 45400 4
C 52800 45200 1 0 0 capacitor-1.sym
{
T 53000 45900 5 10 0 0 0 0 1
device=CAPACITOR
T 53000 45700 5 10 1 1 0 0 1
refdes=C12
T 53000 46100 5 10 0 0 0 0 1
symversion=0.1
T 53000 45000 5 10 1 1 0 0 1
value=0.1 uF
T 52800 45200 5 10 0 1 0 0 1
footprint=ACY100
}
N 53900 45600 52200 45600 4
N 52200 45400 52800 45400 4
N 53700 45400 53900 45400 4
C 52400 41400 1 0 0 gnd-1.sym
C 54100 41700 1 180 0 5V-plus-1.sym
N 53900 42100 53900 41700 4
N 52500 41700 52500 41900 4
C 52800 41700 1 0 0 capacitor-1.sym
{
T 53000 42400 5 10 0 0 0 0 1
device=CAPACITOR
T 53000 42200 5 10 1 1 0 0 1
refdes=C13
T 53000 42600 5 10 0 0 0 0 1
symversion=0.1
T 53000 41500 5 10 1 1 0 0 1
value=0.1 uF
T 52800 41700 5 10 0 1 0 0 1
footprint=ACY100
}
N 53900 42100 52200 42100 4
N 52200 41900 52800 41900 4
N 53700 41900 53900 41900 4
C 52400 38200 1 0 0 gnd-1.sym
C 54100 38500 1 180 0 5V-plus-1.sym
N 53900 38900 53900 38500 4
N 52500 38500 52500 38700 4
N 53900 38900 52200 38900 4
N 30900 42000 31000 42000 4
N 30900 38300 31300 38300 4
N 41800 47100 42900 47100 4
N 21300 46800 39200 46800 4
N 22300 47400 22300 55200 4
N 22700 47100 39200 47100 4
N 22700 47100 22700 55200 4
N 21900 47700 39200 47700 4
N 21900 47700 21900 55200 4
N 21100 48000 39200 48000 4
N 21100 48000 21100 57000 4
N 21300 46800 21300 56800 4
N 23800 47100 23800 53400 4
N 34900 46200 39200 46200 4
N 34900 43900 34900 46200 4
N 35600 45900 39200 45900 4
N 35600 43900 35600 45900 4
C 31900 56000 1 270 0 connector3-1.sym
{
T 32000 56100 5 10 1 1 0 0 1
refdes=X_MIN
T 31900 56000 5 10 0 1 0 0 1
footprint=100-3-1
}
C 33300 56000 1 270 0 connector3-1.sym
{
T 33400 56100 5 10 1 1 0 0 1
refdes=Y_MIN
T 33300 56000 5 10 0 1 0 0 1
footprint=100-3-1
}
C 34700 56000 1 270 0 connector3-1.sym
{
T 34800 56100 5 10 1 1 0 0 1
refdes=Z_MIN
T 34700 56000 5 10 0 1 0 0 1
footprint=100-3-1
}
N 32700 49500 32700 54300 4
N 34100 49200 34100 54300 4
N 35500 48900 39200 48900 4
N 35500 48900 35500 54300 4
N 38800 54300 38800 50600 4
C 38000 52400 1 270 0 resistor-1.sym
{
T 38400 52100 5 10 0 0 270 0 1
device=RESISTOR
T 38300 52300 5 10 1 1 270 0 1
refdes=RT1
T 38300 51800 5 10 1 1 270 0 1
value=4K7
T 38000 52400 5 10 0 1 0 0 1
footprint=ACY300_1
}
N 40800 54300 40800 50800 4
N 40100 50800 42600 50800 4
N 42600 49200 42600 50800 4
C 39100 50900 1 0 0 gnd-1.sym
N 39200 51500 39200 51200 4
C 40000 52400 1 270 0 resistor-1.sym
{
T 40400 52100 5 10 0 0 270 0 1
device=RESISTOR
T 40300 52300 5 10 1 1 270 0 1
refdes=RT2
T 40300 51800 5 10 1 1 270 0 1
value=4K7
T 40000 52400 5 10 0 1 0 0 1
footprint=ACY300_1
}
C 41100 50900 1 0 0 gnd-1.sym
N 41200 51500 41200 51200 4
N 40100 50800 40100 51500 4
N 38100 50600 38100 51500 4
C 25300 39100 1 0 0 led-1.sym
{
T 26100 39500 5 10 1 1 0 0 1
refdes=LED5
T 25300 39100 5 10 0 1 0 0 1
footprint=LED3_1
T 26100 40300 5 10 0 0 0 0 1
description=green
T 26100 39900 5 10 0 0 0 0 1
symversion=0.1
}
C 23800 39200 1 0 0 resistor-1.sym
{
T 24100 39600 5 10 0 0 0 0 1
device=RESISTOR
T 24000 39500 5 10 1 1 0 0 1
refdes=R22
T 24000 39100 5 10 1 1 0 0 1
value=560R
T 23800 39200 5 10 0 1 0 0 1
footprint=ACY300_1
}
C 23000 40300 1 0 0 12V-plus-1.sym
{
T 23300 40300 5 8 1 1 0 0 1
net=Vheat:1
}
C 29700 37000 1 0 0 gnd-1.sym
N 25300 39300 24700 39300 4
N 23200 39300 23200 40300 4
C 55300 47100 1 270 1 connector4-1.sym
{
T 56300 46900 5 10 1 1 0 6 1
refdes=E_MOT
T 55300 47100 5 10 0 1 90 6 1
footprint=100-4-1
}
N 52200 49600 55500 49600 4
N 52200 49000 56400 49000 4
N 52200 49200 56100 49200 4
N 52200 49400 55800 49400 4
C 55300 43900 1 270 1 connector4-1.sym
{
T 56300 43700 5 10 1 1 0 6 1
refdes=Z_MOT
T 55300 43900 5 10 0 1 90 6 1
footprint=100-4-1
}
N 52200 46400 55500 46400 4
N 52200 46200 55800 46200 4
N 52200 46000 56100 46000 4
N 52200 45800 56400 45800 4
C 55300 40400 1 270 1 connector4-1.sym
{
T 56300 40200 5 10 1 1 0 6 1
refdes=Y_MOT
T 55300 40400 5 10 0 1 90 6 1
footprint=100-4-1
}
N 52200 42900 55500 42900 4
N 52200 42700 55800 42700 4
N 52200 42500 56100 42500 4
N 52200 42300 56400 42300 4
C 55300 37200 1 270 1 connector4-1.sym
{
T 56300 37000 5 10 1 1 0 6 1
refdes=X_MOT
T 55300 37200 5 10 0 1 90 6 1
footprint=100-4-1
}
N 52200 39700 55500 39700 4
N 52200 39500 55800 39500 4
N 52200 39300 56100 39300 4
N 52200 39100 56400 39100 4
N 46800 49800 50400 49800 4
C 49000 49500 1 90 0 jumper-1.sym
{
T 48500 49800 5 10 1 1 90 0 1
refdes=J2
T 49000 49500 5 10 0 1 0 0 1
footprint=JUMPER2_1
}
C 49000 49300 1 90 0 jumper-1.sym
{
T 48500 49600 5 10 1 1 90 0 1
refdes=J3
T 49000 49300 5 10 0 1 0 0 1
footprint=JUMPER2_1
}
N 49000 49600 50400 49600 4
N 49000 49400 50400 49400 4
N 47000 49400 48000 49400 4
N 47000 49600 48000 49600 4
C 49000 46300 1 90 0 jumper-1.sym
{
T 48500 46600 5 10 1 1 90 0 1
refdes=J5
T 49000 46300 5 10 0 1 0 0 1
footprint=JUMPER2_1
}
C 49000 46100 1 90 0 jumper-1.sym
{
T 48500 46400 5 10 1 1 90 0 1
refdes=J6
T 49000 46100 5 10 0 1 0 0 1
footprint=JUMPER2_1
}
C 49000 42800 1 90 0 jumper-1.sym
{
T 48500 43100 5 10 1 1 90 0 1
refdes=J8
T 49000 42800 5 10 0 1 0 0 1
footprint=JUMPER2_1
}
C 49000 42600 1 90 0 jumper-1.sym
{
T 48500 42900 5 10 1 1 90 0 1
refdes=J9
T 49000 42600 5 10 0 1 0 0 1
footprint=JUMPER2_1
}
C 49100 39600 1 90 0 jumper-1.sym
{
T 48600 39900 5 10 1 1 90 0 1
refdes=J11
T 49100 39600 5 10 0 1 0 0 1
footprint=JUMPER2_1
}
C 49100 39400 1 90 0 jumper-1.sym
{
T 48600 39700 5 10 1 1 90 0 1
refdes=J12
T 49100 39400 5 10 0 1 0 0 1
footprint=JUMPER2_1
}
N 46800 39900 50400 39900 4
N 49100 39700 50400 39700 4
N 49100 39500 50400 39500 4
N 47000 39500 48100 39500 4
N 47000 39700 48100 39700 4
N 49000 42700 50400 42700 4
N 47000 42700 48000 42700 4
N 47000 42900 48000 42900 4
N 46800 43100 50400 43100 4
N 49000 42900 50400 42900 4
N 49000 46400 50400 46400 4
N 49000 46200 50400 46200 4
N 46800 46600 50400 46600 4
N 52200 50000 52800 50000 4
N 52200 46800 52800 46800 4
N 53700 46800 53900 46800 4
N 52200 38700 52800 38700 4
N 38100 52400 38100 52900 4
N 38100 50600 42300 50600 4
N 38800 52800 39200 52800 4
N 39200 52800 39200 52400 4
N 41200 52400 41200 52800 4
N 41200 52800 40800 52800 4
N 40100 52900 40100 52400 4
N 26200 43000 29800 43000 4
N 26200 39300 29800 39300 4
C 27900 41200 1 0 0 connector3-1.sym
{
T 27900 42300 5 10 1 1 0 0 1
refdes=Q2
T 27900 41200 5 10 0 0 180 0 1
footprint=TO-220-1
T 27900 41000 5 10 1 1 0 0 1
value=IRFZ 44N
}
N 30000 42000 29600 42000 4
N 29800 43000 29800 41700 4
N 29800 41700 29600 41700 4
C 27900 37500 1 0 0 connector3-1.sym
{
T 27900 38600 5 10 1 1 0 0 1
refdes=Q1
T 27900 37500 5 10 0 0 180 0 1
footprint=TO-220-1
T 27900 37300 5 10 1 1 0 0 1
value=IRFZ 44N
}
N 30000 38300 29600 38300 4
N 29600 38000 29800 38000 4
N 29800 38000 29800 39300 4
C 45300 35700 1 270 0 capacitor-2.sym
{
T 46000 35500 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 45800 35500 5 10 1 1 270 0 1
refdes=C1
T 46200 35500 5 10 0 0 270 0 1
symversion=0.1
T 45300 35700 5 10 0 0 0 0 1
footprint=RCY3mm5
T 45100 35500 5 10 1 1 270 0 1
value=100 uF
}
C 40500 36500 1 270 0 capacitor-2.sym
{
T 41200 36300 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 41000 36300 5 10 1 1 270 0 1
refdes=C2
T 41400 36300 5 10 0 0 270 0 1
symversion=0.1
T 40500 36500 5 10 0 0 0 0 1
footprint=RCY3mm5
T 40300 36300 5 10 1 1 270 0 1
value=100 uF
}
C 34800 36500 1 270 0 capacitor-2.sym
{
T 35500 36300 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 35300 36300 5 10 1 1 270 0 1
refdes=C6
T 35700 36300 5 10 0 0 270 0 1
symversion=0.1
T 34800 36500 5 10 0 0 0 0 1
footprint=RCY3mm5
T 34600 36300 5 10 1 1 270 0 1
value=100 uF
}
C 39000 52400 1 270 0 capacitor-2.sym
{
T 39700 52200 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 39500 52200 5 10 1 1 270 0 1
refdes=CT1
T 39900 52200 5 10 0 0 270 0 1
symversion=0.1
T 39000 52400 5 10 0 0 0 0 1
footprint=RCY2mm
T 39000 51800 5 10 1 1 270 0 1
value=10 uF
}
C 41000 52400 1 270 0 capacitor-2.sym
{
T 41700 52200 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 41500 52200 5 10 1 1 270 0 1
refdes=CT2
T 41900 52200 5 10 0 0 270 0 1
symversion=0.1
T 41000 52400 5 10 0 0 0 0 1
footprint=RCY2mm
T 41000 51800 5 10 1 1 270 0 1
value=10 uF
}
N 41500 32500 41500 32800 4
N 41100 32500 41100 32800 4
N 22700 39000 27600 39000 4
N 22700 42700 27600 42700 4
C 32300 53700 1 0 0 gnd-1.sym
N 32400 54300 32400 54000 4
C 32300 54000 1 180 0 5V-plus-1.sym
N 32100 54300 32100 54000 4
C 33700 53700 1 0 0 gnd-1.sym
N 33800 54300 33800 54000 4
C 33700 54000 1 180 0 5V-plus-1.sym
N 33500 54300 33500 54000 4
C 35100 53700 1 0 0 gnd-1.sym
N 35200 54300 35200 54000 4
C 35100 54000 1 180 0 5V-plus-1.sym
N 34900 54300 34900 54000 4
C 40400 53700 1 0 0 gnd-1.sym
N 40500 54300 40500 54000 4
C 38400 53700 1 0 0 gnd-1.sym
N 38500 54300 38500 54000 4
C 32800 42200 1 90 0 switch-pushbutton-no-1.sym
{
T 32500 42600 5 10 1 1 90 0 1
refdes=RESET
T 32200 42600 5 10 0 0 90 0 1
device=SWITCH_PUSHBUTTON_NO
T 32800 42200 5 10 0 1 0 0 1
footprint=MJTP1230-1
}
C 33500 43700 1 90 0 resistor-1.sym
{
T 33100 44000 5 10 0 0 90 0 1
device=RESISTOR
T 33200 43900 5 10 1 1 90 0 1
refdes=R30
T 33700 43900 5 10 1 1 90 0 1
value=10K
T 33500 43700 5 10 0 1 0 0 1
footprint=ACY300_1
}
C 32700 41700 1 0 0 gnd-1.sym
N 32800 43200 32800 47100 4
N 33400 46800 33400 44600 4
N 33400 43400 32800 43400 4
N 32800 42000 32800 42200 4
N 24500 40100 23200 40100 4
N 25400 40100 27600 40100 4
N 27600 40100 27600 39300 4
N 24500 43800 23200 43800 4
N 25400 43800 27600 43800 4
N 27600 43800 27600 43000 4
N 27600 39000 27600 39300 4
N 29800 37700 29800 37300 4
N 27600 42700 27600 43000 4
N 29800 41000 29800 41400 4
C 45700 36400 1 0 0 12V-plus-1.sym
{
T 46000 36400 5 8 1 1 0 0 1
net=Vmot:1
}
C 45200 36700 1 180 0 gnd-1.sym
N 45100 34200 45100 36400 4
N 31300 48300 39200 48300 4
N 31000 48600 39200 48600 4
N 41800 48600 44000 48600 4
N 41800 48300 43800 48300 4
N 43600 48000 41800 48000 4
N 42300 49500 42300 50600 4
N 43700 32500 43700 38300 4
N 43700 38300 42300 38300 4
N 42300 38300 42300 43800 4
N 22300 47400 39200 47400 4
C 39100 34200 1 270 0 ATX20-1.sym
{
T 43400 33200 5 10 1 1 270 6 1
refdes=CONN1
T 43550 33900 5 10 0 0 270 0 1
footprint=ATX20+4-1
T 39100 33800 5 10 1 1 270 0 1
device=ATX20
}
N 38300 32500 41500 32500 4
N 38300 32500 38300 34600 4
N 39900 32800 39900 32100 4
N 39500 32800 39500 32100 4
N 35400 32100 39900 32100 4
N 43700 32500 41900 32500 4
N 41900 32500 41900 32800 4
N 41500 34200 41500 34600 4
N 41500 35600 41500 34600 4
N 42400 45400 42400 45900 4
N 42400 45900 41800 45900 4
N 42600 45600 42600 46200 4
N 42600 46200 41800 46200 4
C 23100 53800 1 90 0 ICSP-1.sym
{
T 21650 55900 5 10 1 1 90 3 1
refdes=CONN6
T 21450 55900 5 10 0 0 90 3 1
footprint=ICSP_HEADER
T 22950 55900 5 10 1 1 90 5 1
device=ICSP
}
N 21300 56800 21900 56800 4
N 21900 56800 21900 56600 4
N 21100 57000 22300 57000 4
N 22300 57000 22300 56600 4
N 33400 43700 33400 43400 4
N 41800 49500 42300 49500 4
N 42600 49200 41800 49200 4
N 50400 49200 50200 49200 4
N 50200 49200 50200 49000 4
N 50200 46000 50200 45800 4
N 50200 42500 50200 42300 4
N 50200 39300 50200 39100 4
C 24500 43600 1 0 0 diode-3.sym
{
T 24950 44150 5 10 0 0 0 0 1
device=DIODE
T 24850 44050 5 10 1 1 0 0 1
refdes=D2
T 24600 43500 5 10 1 1 0 0 1
value=1N4004
T 24500 43600 5 10 0 1 0 0 1
footprint=1N4004
}
C 24500 39900 1 0 0 diode-3.sym
{
T 24950 40450 5 10 0 0 0 0 1
device=DIODE
T 24850 40350 5 10 1 1 0 0 1
refdes=D1
T 24600 39800 5 10 1 1 0 0 1
value=1N4004
T 24500 39900 5 10 0 1 0 0 1
footprint=1N4004
}
N 45100 34600 45500 34600 4
C 44500 34200 1 270 0 MOLEX_4_PIN.sym
{
T 46200 33400 5 10 1 1 270 6 1
refdes=CONN2
T 45300 33400 5 10 1 1 0 5 1
device=Molex 4 Pin
}
N 45500 34200 45500 34800 4
N 45500 35700 45500 35900 4
N 45500 35900 45900 35900 4
C 34400 45900 1 90 0 capacitor-1.sym
{
T 33700 46100 5 10 0 0 90 0 1
device=CAPACITOR
T 33900 46100 5 10 1 1 90 0 1
refdes=C14
T 33500 46100 5 10 0 0 90 0 1
symversion=0.1
T 34600 46100 5 10 1 1 90 0 1
value=0.1 uF
T 34400 45900 5 10 0 1 0 0 1
footprint=ACY100
}
C 34100 45600 1 0 0 gnd-1.sym
C 44500 37400 1 0 0 5V-plus-1.sym
N 44700 37400 44700 34200 4
C 43300 36700 1 90 0 jumper-1.sym
{
T 42800 37000 5 8 0 0 90 0 1
device=JUMPER
T 42900 37100 5 10 1 1 180 0 1
refdes=J13
T 42300 36500 5 10 0 1 0 0 1
footprint=JUMPER2_1
}
N 43300 36800 44700 36800 4
N 53700 38700 53900 38700 4
N 53700 50000 53900 50000 4
C 52800 49800 1 0 0 capacitor-1.sym
{
T 53000 50500 5 10 0 0 0 0 1
device=CAPACITOR
T 53000 50300 5 10 1 1 0 0 1
refdes=C16
T 53000 50700 5 10 0 0 0 0 1
symversion=0.1
T 53000 49600 5 10 1 1 0 0 1
value=0.1 uF
T 52800 49800 5 10 0 1 0 0 1
footprint=ACY100
}
C 52800 38500 1 0 0 capacitor-1.sym
{
T 53000 39200 5 10 0 0 0 0 1
device=CAPACITOR
T 53000 39000 5 10 1 1 0 0 1
refdes=C17
T 53000 39400 5 10 0 0 0 0 1
symversion=0.1
T 53000 38300 5 10 1 1 0 0 1
value=0.1 uF
T 52800 38500 5 10 0 1 0 0 1
footprint=ACY100
}
N 22700 43000 23800 43000 4
N 22700 39300 23800 39300 4
C 42700 47100 1 270 0 capacitor-1.sym
{
T 43400 46900 5 10 0 0 270 0 1
device=CAPACITOR
T 43200 46900 5 10 1 1 270 0 1
refdes=C18
T 43600 46900 5 10 0 0 270 0 1
symversion=0.1
T 42500 46900 5 10 1 1 270 0 1
value=0.1 uF
T 42700 47100 5 10 0 1 0 0 1
footprint=ACY100
}
C 42800 45900 1 0 0 gnd-1.sym
C 40100 42700 1 0 0 coil-1.sym
{
T 40300 43100 5 10 0 0 0 0 1
device=COIL
T 40300 42900 5 10 1 1 0 0 1
refdes=L1
T 40300 43300 5 10 0 0 0 0 1
symversion=0.1
T 40200 42400 5 10 1 1 0 0 1
value=100 uH
T 40100 42700 5 10 0 1 0 0 1
footprint=ACY500_1
}
C 41300 42700 1 270 0 capacitor-1.sym
{
T 42000 42500 5 10 0 0 270 0 1
device=CAPACITOR
T 41800 42500 5 10 1 1 270 0 1
refdes=C19
T 42200 42500 5 10 0 0 270 0 1
symversion=0.1
T 41100 42500 5 10 1 1 270 0 1
value=0.1 uF
T 41300 42700 5 10 0 1 0 0 1
footprint=ACY100
}
C 41400 41400 1 0 0 gnd-1.sym
N 41100 42700 42000 42700 4
N 41500 41800 41500 41700 4
T 41800 52000 9 10 1 0 0 0 3
RT1 and RT2 should match the
Thermistor's resitance in it's operating
point for maximum resolution.
C 37300 43600 1 0 0 connector5-1.sym
{
T 37200 44200 5 10 1 1 90 0 1
refdes=MISC
T 37300 43600 5 10 0 1 0 0 1
footprint=JUMPER5_1
}
N 39000 45000 39200 45000 4
N 39000 44700 39200 44700 4
N 39000 44400 39200 44400 4
N 39000 44100 39200 44100 4
N 39000 43800 39200 43800 4
N 50400 50000 49800 50000 4
N 49800 40100 49800 50000 4
N 49800 40100 50400 40100 4
N 50400 43300 49800 43300 4
N 50400 46800 49800 46800 4
N 41800 47700 49800 47700 4
C 40000 36000 1 180 0 jumper-1.sym
{
T 39700 35500 5 8 0 0 180 0 1
device=JUMPER
T 39700 35300 5 10 1 1 90 0 1
refdes=J14
T 40200 35000 5 10 0 1 90 0 1
footprint=JUMPER2_1
}
N 39900 34200 39900 35000 4
N 29800 41400 29600 41400 4
N 29800 37700 29600 37700 4
C 21000 42500 1 0 0 connector2-1.sym
{
T 21000 43300 5 10 1 1 0 0 1
refdes=HEATER2
T 21000 42500 5 10 0 0 0 0 1
footprint=Combi-2-1
}
C 21000 38800 1 0 0 connector2-1.sym
{
T 21000 39600 5 10 1 1 0 0 1
refdes=HEATER1
T 21000 38800 5 10 0 0 0 0 1
footprint=Combi-2-1
}
C 38300 56000 1 270 0 connector2-1.sym
{
T 38300 56100 5 10 1 1 0 0 1
refdes=TEMP1
T 38300 56000 5 10 0 0 0 0 1
footprint=100-2-1
}
C 40300 56000 1 270 0 connector2-1.sym
{
T 40300 56100 5 10 1 1 0 0 1
refdes=TEMP2
T 40300 56000 5 10 0 0 0 0 1
footprint=100-2-1
}
T 41900 31900 9 10 1 0 0 0 2
Uses an 24 pin footprint for
compatibility with ATX24 PSUs
N 48400 34200 48400 36400 4
C 47800 35700 1 270 0 capacitor-2.sym
{
T 48500 35500 5 10 0 0 270 0 1
device=POLARIZED_CAPACITOR
T 48300 35500 5 10 1 1 270 0 1
refdes=C7
T 48700 35500 5 10 0 0 270 0 1
symversion=0.1
T 47800 35700 5 10 0 0 0 0 1
footprint=RCY3mm5
T 47600 35500 5 10 1 1 270 0 1
value=100 uF
}
C 48200 36400 1 0 0 12V-plus-1.sym
{
T 48500 36400 5 8 1 1 0 0 1
net=Vheat:1
}
C 47700 36700 1 180 0 gnd-1.sym
N 47600 34200 47600 36400 4
N 47600 34600 48000 34600 4
C 47000 34200 1 270 0 MOLEX_4_PIN.sym
{
T 48700 33400 5 10 1 1 270 6 1
refdes=CONN3
T 47800 33400 5 10 1 1 0 5 1
device=Molex 4 Pin
}
N 48000 34200 48000 34800 4
N 48000 35700 48000 35900 4
N 48000 35900 48400 35900 4
T 51900 33400 9 24 1 0 0 1 6
(c) 2011 Traumflug
(c) 2010 Traumflug, Jacky2k

Creative Commons BY-NC-SA 3.0 Licence

http://reprap.org/wiki/Generation_7_Electronics
N 39200 49200 34100 49200 4
N 39200 49500 32700 49500 4
N 55500 49600 55500 48800 4
N 55800 49400 55800 48800 4
N 56100 49200 56100 48800 4
N 56400 49000 56400 48800 4
N 55500 46400 55500 45600 4
N 55800 46200 55800 45600 4
N 56100 46000 56100 45600 4
N 56400 45800 56400 45600 4
N 55500 42900 55500 42100 4
N 55800 42700 55800 42100 4
N 56100 42500 56100 42100 4
N 56400 42300 56400 42100 4
N 56400 39100 56400 38900 4
N 56100 39300 56100 38900 4
N 55800 39500 55800 38900 4
N 55500 39700 55500 38900 4
C 39700 38600 1 0 0 5V-plus-1.sym
{
T 40000 38600 5 8 1 1 0 0 1
net=+5VSB:1
}
C 37000 50000 1 0 0 5V-plus-1.sym
{
T 37300 50000 5 8 1 1 0 0 1
net=+5VSB:1
}
C 39000 43000 1 0 0 5V-plus-1.sym
{
T 39300 43000 5 8 1 1 0 0 1
net=+5VSB:1
}
N 39200 43000 39200 42700 4
N 39200 42700 40100 42700 4
C 39900 52900 1 0 0 5V-plus-1.sym
{
T 40200 52900 5 8 1 1 0 0 1
net=+5VSB:1
}
C 37900 52900 1 0 0 5V-plus-1.sym
{
T 38200 52900 5 8 1 1 0 0 1
net=+5VSB:1
}
