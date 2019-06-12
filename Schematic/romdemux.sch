EESchema Schematic File Version 4
LIBS:ttt_ttl-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:VCC #PWR02
U 1 1 5CF78A19
P 3500 6850
F 0 "#PWR02" H 3500 6700 50  0001 C CNN
F 1 "VCC" H 3500 7000 50  0000 C CNN
F 2 "" H 3500 6850 50  0001 C CNN
F 3 "" H 3500 6850 50  0001 C CNN
	1    3500 6850
	1    0    0    -1  
$EndComp
Text GLabel 4350 6850 2    60   Input ~ 0
Hi
Text GLabel 4350 7150 2    60   Input ~ 0
Lo
$Comp
L ttt_ttl-rescue:74LS154 U11
U 1 1 5CF8106E
P 5400 1750
F 0 "U11" H 5400 2650 50  0000 C CNN
F 1 "74LS154" H 5400 900 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm" H 5400 1750 50  0001 C CNN
F 3 "" H 5400 1750 50  0001 C CNN
	1    5400 1750
	1    0    0    -1  
$EndComp
NoConn ~ 6100 950 
NoConn ~ 6100 1950
NoConn ~ 6100 2050
NoConn ~ 6100 2150
NoConn ~ 6100 2250
NoConn ~ 6100 2350
NoConn ~ 6100 2450
Text GLabel 6300 1050 2    60   Output ~ 0
Move1
Text GLabel 6300 1150 2    60   Output ~ 0
Move2
Text GLabel 6300 1250 2    60   Output ~ 0
Move3
Text GLabel 6300 1350 2    60   Output ~ 0
Move4
Text GLabel 6300 1450 2    60   Output ~ 0
Move5
Text GLabel 6300 1550 2    60   Output ~ 0
Move6
Text GLabel 6300 1650 2    60   Output ~ 0
Move7
Text GLabel 6300 1750 2    60   Output ~ 0
Move8
Wire Wire Line
	3500 6850 3750 6850
Wire Wire Line
	3500 7150 3750 7150
Wire Wire Line
	6100 1050 6300 1050
Wire Wire Line
	6100 1150 6300 1150
Wire Wire Line
	6100 1250 6300 1250
Wire Wire Line
	6100 1350 6300 1350
Wire Wire Line
	6100 1450 6300 1450
Wire Wire Line
	6100 1550 6300 1550
Wire Wire Line
	6100 1650 6300 1650
Wire Wire Line
	6100 1750 6300 1750
Text GLabel 4550 1450 0    60   Input ~ 0
Lo
Text GLabel 4550 1550 0    60   Input ~ 0
Lo
Wire Wire Line
	4550 1450 4750 1450
Wire Wire Line
	4550 1550 4750 1550
$Comp
L ttt_ttl-rescue:27C2001 U10
U 1 1 5CF7A49D
P 2250 1850
AR Path="/5CF7A49D" Ref="U10"  Part="1" 
AR Path="/5CF77C08/5CF7A49D" Ref="U10"  Part="1" 
F 0 "U10" H 2250 2850 50  0000 C CNN
F 1 "27C2001" H 2250 450 50  0000 C CNN
F 2 "Package_DIP:DIP-32_W15.24mm_Socket" H 2250 1850 50  0001 C CNN
F 3 "" H 2250 1850 50  0001 C CNN
	1    2250 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 950  4750 950 
Wire Wire Line
	2950 1050 4750 1050
Wire Wire Line
	2950 1150 4750 1150
Wire Wire Line
	2950 1250 4750 1250
NoConn ~ 2950 1550
NoConn ~ 2950 1650
$Comp
L ttt_ttl-rescue:LED_Small_ALT D20
U 1 1 5CF7A612
P 3550 1450
F 0 "D20" V 3600 1250 50  0000 L CNN
F 1 "TIE" V 3500 1250 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 3550 1450 50  0001 C CNN
F 3 "" V 3550 1450 50  0001 C CNN
	1    3550 1450
	0    -1   -1   0   
$EndComp
$Comp
L ttt_ttl-rescue:LED_Small_ALT D19
U 1 1 5CF7A765
P 3200 1550
F 0 "D19" V 3250 1350 50  0000 L CNN
F 1 "WIN" V 3150 1350 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 3200 1550 50  0001 C CNN
F 3 "" V 3200 1550 50  0001 C CNN
	1    3200 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2950 1450 3200 1450
Wire Wire Line
	2950 1350 3550 1350
$Comp
L ttt_ttl-rescue:R_Small R38
U 1 1 5CF7A7DD
P 3550 1850
F 0 "R38" H 3650 1900 50  0000 L CNN
F 1 "1K" H 3650 1800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 3550 1850 50  0001 C CNN
F 3 "" H 3550 1850 50  0001 C CNN
	1    3550 1850
	1    0    0    -1  
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R37
U 1 1 5CF7A87F
P 3200 1850
F 0 "R37" H 3300 1900 50  0000 L CNN
F 1 "1K" H 3300 1800 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 3200 1850 50  0001 C CNN
F 3 "" H 3200 1850 50  0001 C CNN
	1    3200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 1650 3200 1750
Wire Wire Line
	3550 1550 3550 1750
Text GLabel 3100 2050 0    60   Input ~ 0
Lo
Wire Wire Line
	3100 2050 3200 2050
Wire Wire Line
	3550 2050 3550 1950
Wire Wire Line
	3200 1950 3200 2050
Connection ~ 3200 2050
NoConn ~ 1550 2750
Text GLabel 1400 3050 0    60   Input ~ 0
Lo
Text GLabel 1400 3150 0    60   Input ~ 0
Lo
Wire Wire Line
	1400 3050 1550 3050
Wire Wire Line
	1400 3150 1550 3150
Text GLabel 1350 950  0    60   Input ~ 0
User1
Text GLabel 1350 1050 0    60   Input ~ 0
User2
Text GLabel 1350 1150 0    60   Input ~ 0
User3
Text GLabel 1350 1250 0    60   Input ~ 0
User4
Text GLabel 1350 1350 0    60   Input ~ 0
User5
Text GLabel 1350 1450 0    60   Input ~ 0
User6
Text GLabel 1350 1550 0    60   Input ~ 0
User7
Text GLabel 1350 1650 0    60   Input ~ 0
User8
Text GLabel 1350 1750 0    60   Input ~ 0
User9
Text GLabel 1350 1850 0    60   Input ~ 0
Board1
Text GLabel 1350 1950 0    60   Input ~ 0
Board2
Text GLabel 1350 2050 0    60   Input ~ 0
Board3
Text GLabel 1350 2150 0    60   Input ~ 0
Board4
Text GLabel 1350 2250 0    60   Input ~ 0
Board5
Text GLabel 1350 2350 0    60   Input ~ 0
Board6
Text GLabel 1350 2450 0    60   Input ~ 0
Board7
Text GLabel 1350 2550 0    60   Input ~ 0
Board8
Text GLabel 1350 2650 0    60   Input ~ 0
Board9
Wire Wire Line
	1350 2650 1550 2650
Wire Wire Line
	1350 2550 1550 2550
Wire Wire Line
	1350 2450 1550 2450
Wire Wire Line
	1350 2350 1550 2350
Wire Wire Line
	1350 2250 1550 2250
Wire Wire Line
	1350 2150 1550 2150
Wire Wire Line
	1350 2050 1550 2050
Wire Wire Line
	1350 1950 1550 1950
Wire Wire Line
	1350 1850 1550 1850
Wire Wire Line
	1350 1750 1550 1750
Wire Wire Line
	1350 1650 1550 1650
Wire Wire Line
	1350 1550 1550 1550
Wire Wire Line
	1350 1450 1550 1450
Wire Wire Line
	1350 1350 1550 1350
Wire Wire Line
	1350 1250 1550 1250
Wire Wire Line
	1350 1150 1550 1150
Wire Wire Line
	1350 1050 1550 1050
Wire Wire Line
	1350 950  1550 950 
NoConn ~ 1550 2850
Text GLabel 6300 1850 2    60   Output ~ 0
Move9
Wire Wire Line
	6100 1850 6300 1850
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5CF7F449
P 4000 6650
F 0 "#FLG03" H 4000 6725 50  0001 C CNN
F 1 "PWR_FLAG" H 4000 6800 50  0000 C CNN
F 2 "" H 4000 6650 50  0001 C CNN
F 3 "" H 4000 6650 50  0001 C CNN
	1    4000 6650
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG04
U 1 1 5CF7F480
P 4000 7400
F 0 "#FLG04" H 4000 7475 50  0001 C CNN
F 1 "PWR_FLAG" H 4000 7550 50  0000 C CNN
F 2 "" H 4000 7400 50  0001 C CNN
F 3 "" H 4000 7400 50  0001 C CNN
	1    4000 7400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 6650 4000 6850
Connection ~ 4000 6850
Wire Wire Line
	4000 7400 4000 7150
Connection ~ 4000 7150
$Comp
L ttt_ttl-rescue:SW_Push SW10
U 1 1 5CF8072E
P 5250 7200
F 0 "SW10" V 5300 6950 50  0000 L CNN
F 1 "SW_Push" V 5200 7000 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 5250 7400 50  0001 C CNN
F 3 "" H 5250 7400 50  0001 C CNN
	1    5250 7200
	0    1    1    0   
$EndComp
Text GLabel 5450 6950 2    60   Output ~ 0
Reset
Wire Wire Line
	5250 6950 5450 6950
$Comp
L ttt_ttl-rescue:R_Small R40
U 1 1 5CF80CCF
P 5250 6800
F 0 "R40" H 5050 6850 50  0000 L CNN
F 1 "1K" H 5050 6750 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 5250 6800 50  0001 C CNN
F 3 "" H 5250 6800 50  0001 C CNN
	1    5250 6800
	1    0    0    -1  
$EndComp
Text GLabel 5450 7550 2    60   Input ~ 0
Lo
Text GLabel 5450 6600 2    60   Input ~ 0
Hi
Wire Wire Line
	5450 6600 5250 6600
Wire Wire Line
	5250 6600 5250 6700
Wire Wire Line
	5450 7550 5250 7550
Wire Wire Line
	3200 2050 3550 2050
Wire Wire Line
	4000 6850 4350 6850
Wire Wire Line
	4000 7150 4350 7150
$Comp
L Timer:NE555 U12
U 1 1 5CF8BC33
P 4800 4600
F 0 "U12" H 4800 4650 50  0000 C CNN
F 1 "NE555" H 4800 4550 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4800 4600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ne555.pdf" H 4800 4600 50  0001 C CNN
	1    4800 4600
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR04
U 1 1 5CF8D6BE
P 4800 3950
F 0 "#PWR04" H 4800 3800 50  0001 C CNN
F 1 "VCC" H 4800 4150 50  0000 C CNN
F 2 "" H 4800 3950 50  0001 C CNN
F 3 "" H 4800 3950 50  0001 C CNN
	1    4800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 5000 4800 5150
Text GLabel 5500 4400 2    50   Output ~ 0
Clk
$Comp
L Device:R_Small R42
U 1 1 5CF93E10
P 4800 3550
F 0 "R42" V 4604 3550 50  0000 C CNN
F 1 "20K" V 4695 3550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4800 3550 50  0001 C CNN
F 3 "~" H 4800 3550 50  0001 C CNN
	1    4800 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	5400 3550 4900 3550
Wire Wire Line
	4300 4400 4250 4400
Wire Wire Line
	4050 3550 4700 3550
$Comp
L power:VCC #PWR03
U 1 1 5CF97B86
P 4250 4800
F 0 "#PWR03" H 4250 4650 50  0001 C CNN
F 1 "VCC" H 4250 4700 50  0000 C CNN
F 2 "" H 4250 4800 50  0001 C CNN
F 3 "" H 4250 4800 50  0001 C CNN
	1    4250 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4800 4250 4800
$Comp
L Device:C_Small C1
U 1 1 5CF9BF02
P 4050 4800
F 0 "C1" H 3850 4850 50  0000 L CNN
F 1 "10nF" H 3800 4750 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 4050 4800 50  0001 C CNN
F 3 "~" H 4050 4800 50  0001 C CNN
	1    4050 4800
	1    0    0    -1  
$EndComp
Connection ~ 4800 5150
Wire Wire Line
	4800 5150 4800 5200
Wire Wire Line
	4050 4600 4050 4700
Wire Wire Line
	4050 4600 4300 4600
Wire Wire Line
	4050 5150 4050 4900
Wire Wire Line
	4050 5150 4800 5150
NoConn ~ 5300 4600
Wire Wire Line
	5300 4800 5400 4800
Wire Wire Line
	5400 4800 5400 5150
Wire Wire Line
	5400 5600 3350 5600
Wire Wire Line
	3350 5600 3350 4400
$Comp
L Device:R_Small R41
U 1 1 5CFAE14F
P 4250 4150
F 0 "R41" H 4191 4104 50  0000 R CNN
F 1 "100K" H 4191 4195 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4250 4150 50  0001 C CNN
F 3 "~" H 4250 4150 50  0001 C CNN
	1    4250 4150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 4400 4250 4250
Connection ~ 4250 4400
Wire Wire Line
	4800 4000 4800 4200
Wire Wire Line
	4250 4050 4250 4000
Wire Wire Line
	4250 4000 4800 4000
Wire Wire Line
	5300 4400 5400 4400
Wire Wire Line
	3350 4400 4050 4400
Wire Wire Line
	4050 3550 4050 4400
Connection ~ 4050 4400
Wire Wire Line
	4050 4400 4250 4400
Wire Wire Line
	5400 3550 5400 4400
Connection ~ 5400 4400
Wire Wire Line
	5400 4400 5500 4400
Connection ~ 4800 4000
Wire Wire Line
	4800 3950 4800 4000
$Comp
L Device:C_Small C2
U 1 1 5CFC0FFD
P 5150 5150
F 0 "C2" V 5300 5100 50  0000 L CNN
F 1 "100nF" V 5000 5100 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D4.7mm_W2.5mm_P5.00mm" H 5150 5150 50  0001 C CNN
F 3 "~" H 5150 5150 50  0001 C CNN
	1    5150 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 5150 4800 5150
Wire Wire Line
	5250 5150 5400 5150
Connection ~ 5400 5150
Wire Wire Line
	5400 5150 5400 5600
$Comp
L power:GND #PWR0101
U 1 1 5CFD340F
P 3500 7150
F 0 "#PWR0101" H 3500 6900 50  0001 C CNN
F 1 "GND" H 3505 6977 50  0000 C CNN
F 2 "" H 3500 7150 50  0001 C CNN
F 3 "" H 3500 7150 50  0001 C CNN
	1    3500 7150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5CFD4188
P 4800 5200
F 0 "#PWR0102" H 4800 4950 50  0001 C CNN
F 1 "GND" H 4805 5027 50  0000 C CNN
F 2 "" H 4800 5200 50  0001 C CNN
F 3 "" H 4800 5200 50  0001 C CNN
	1    4800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 6900 5250 6950
Wire Wire Line
	5250 7400 5250 7550
Connection ~ 5250 6950
Wire Wire Line
	5250 6950 5250 7000
$Comp
L Device:CP C3
U 1 1 5D0C87CD
P 3750 7000
F 0 "C3" H 3868 7046 50  0000 L CNN
F 1 "220uF" H 3868 6955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P2.50mm" H 3788 6850 50  0001 C CNN
F 3 "~" H 3750 7000 50  0001 C CNN
	1    3750 7000
	1    0    0    -1  
$EndComp
Connection ~ 3750 6850
Wire Wire Line
	3750 6850 4000 6850
Connection ~ 3750 7150
Wire Wire Line
	3750 7150 4000 7150
Text GLabel 1450 6250 0    60   Input ~ 0
Hi
Text GLabel 1450 6700 0    60   Input ~ 0
Lo
Wire Wire Line
	1450 6250 1600 6250
Wire Wire Line
	1450 6700 1600 6700
$Comp
L Connector_Generic:Conn_01x01 J1
U 1 1 5D008CFB
P 1800 6250
F 0 "J1" H 1880 6292 50  0000 L CNN
F 1 "Conn_01x01" H 1880 6201 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 1800 6250 50  0001 C CNN
F 3 "~" H 1800 6250 50  0001 C CNN
	1    1800 6250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 5D00904C
P 1800 6700
F 0 "J2" H 1880 6742 50  0000 L CNN
F 1 "Conn_01x01" H 1880 6651 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.0mm_L10.0mm" H 1800 6700 50  0001 C CNN
F 3 "~" H 1800 6700 50  0001 C CNN
	1    1800 6700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
