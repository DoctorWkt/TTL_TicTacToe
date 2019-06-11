EESchema Schematic File Version 4
LIBS:ttt_ttl-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
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
L ttt_ttl-rescue:74LS107 U1
U 1 1 5CF7BC39
P 2450 1550
F 0 "U1" H 2450 1650 50  0000 C CNN
F 1 "74LS109" H 2450 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2450 1550 50  0001 C CNN
F 3 "" H 2450 1550 50  0001 C CNN
	1    2450 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1550 1800 1550
NoConn ~ 3100 1800
Text GLabel 2350 2250 0    60   Input ~ 0
Reset
Wire Wire Line
	2350 2250 2450 2250
Text GLabel 1700 1800 0    60   Input ~ 0
Board1
Wire Wire Line
	1700 1800 1800 1800
Text GLabel 3450 1300 2    60   Output ~ 0
User1
Wire Wire Line
	3100 1300 3150 1300
$Comp
L ttt_ttl-rescue:LED_Small_ALT D1
U 1 1 5CF78CFA
P 3150 1050
F 0 "D1" V 3250 1100 50  0000 L CNN
F 1 "LED" V 3150 1150 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 3150 1050 50  0001 C CNN
F 3 "" V 3150 1050 50  0001 C CNN
	1    3150 1050
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R7
U 1 1 5CF7BC3B
P 3300 850
F 0 "R7" V 3200 900 50  0000 L CNN
F 1 "1K" V 3200 700 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 3300 850 50  0001 C CNN
F 3 "" H 3300 850 50  0001 C CNN
	1    3300 850 
	0    1    1    0   
$EndComp
Text GLabel 3500 850  2    60   Input ~ 0
Lo
Wire Wire Line
	3500 850  3400 850 
Wire Wire Line
	3150 1150 3150 1300
Connection ~ 3150 1300
Wire Wire Line
	3200 850  3150 850 
Wire Wire Line
	3150 850  3150 950 
$Comp
L ttt_ttl-rescue:74LS107 U2
U 1 1 5CF7BC3C
P 6150 1550
F 0 "U2" H 6150 1650 50  0000 C CNN
F 1 "74LS109" H 6150 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6150 1550 50  0001 C CNN
F 3 "" H 6150 1550 50  0001 C CNN
	1    6150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1550 5500 1550
NoConn ~ 6800 1800
Text GLabel 6050 2250 0    60   Input ~ 0
Reset
Wire Wire Line
	6050 2250 6150 2250
Text GLabel 5400 1800 0    60   Input ~ 0
Board2
Wire Wire Line
	5400 1800 5500 1800
Text GLabel 7150 1300 2    60   Output ~ 0
User2
Wire Wire Line
	6800 1300 6850 1300
$Comp
L ttt_ttl-rescue:LED_Small_ALT D4
U 1 1 5CF7BC3D
P 6850 1050
F 0 "D4" V 6950 1100 50  0000 L CNN
F 1 "LED" V 6850 1150 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 6850 1050 50  0001 C CNN
F 3 "" V 6850 1050 50  0001 C CNN
	1    6850 1050
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R16
U 1 1 5CF7BC3E
P 7000 850
F 0 "R16" V 6900 900 50  0000 L CNN
F 1 "1K" V 6900 700 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 7000 850 50  0001 C CNN
F 3 "" H 7000 850 50  0001 C CNN
	1    7000 850 
	0    1    1    0   
$EndComp
Text GLabel 7200 850  2    60   Input ~ 0
Lo
Wire Wire Line
	7200 850  7100 850 
Wire Wire Line
	6850 1150 6850 1300
Connection ~ 6850 1300
Wire Wire Line
	6900 850  6850 850 
Wire Wire Line
	6850 850  6850 950 
Wire Wire Line
	8950 1550 9050 1550
NoConn ~ 10350 1800
Text GLabel 9600 2250 0    60   Input ~ 0
Reset
Wire Wire Line
	9600 2250 9700 2250
Text GLabel 8950 1800 0    60   Input ~ 0
Board3
Wire Wire Line
	8950 1800 9050 1800
Text GLabel 10700 1300 2    60   Output ~ 0
User3
Wire Wire Line
	10350 1300 10400 1300
$Comp
L ttt_ttl-rescue:LED_Small_ALT D7
U 1 1 5CF7BC40
P 10400 1050
F 0 "D7" V 10500 1100 50  0000 L CNN
F 1 "LED" V 10400 1150 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 10400 1050 50  0001 C CNN
F 3 "" V 10400 1050 50  0001 C CNN
	1    10400 1050
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R25
U 1 1 5CF7BC41
P 10550 850
F 0 "R25" V 10450 900 50  0000 L CNN
F 1 "1K" V 10450 700 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 10550 850 50  0001 C CNN
F 3 "" H 10550 850 50  0001 C CNN
	1    10550 850 
	0    1    1    0   
$EndComp
Text GLabel 10750 850  2    60   Input ~ 0
Lo
Wire Wire Line
	10750 850  10650 850 
Wire Wire Line
	10400 1150 10400 1300
Connection ~ 10400 1300
Wire Wire Line
	10450 850  10400 850 
Wire Wire Line
	10400 850  10400 950 
$Comp
L ttt_ttl-rescue:74LS107 U4
U 1 1 5CF7BC42
P 2500 3600
F 0 "U4" H 2500 3700 50  0000 C CNN
F 1 "74LS109" H 2500 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2500 3600 50  0001 C CNN
F 3 "" H 2500 3600 50  0001 C CNN
	1    2500 3600
	1    0    0    -1  
$EndComp
Text GLabel 1750 3600 0    60   Input ~ 0
Clk
Wire Wire Line
	1750 3600 1850 3600
$Comp
L ttt_ttl-rescue:SW_Push SW2
U 1 1 5CF7B140
P 1250 3100
F 0 "SW2" V 1200 3200 50  0000 L CNN
F 1 "SW_Push" V 1100 3350 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 1250 3300 50  0001 C CNN
F 3 "" H 1250 3300 50  0001 C CNN
	1    1250 3100
	0    1    1    0   
$EndComp
NoConn ~ 3150 3850
Text GLabel 2400 4300 0    60   Input ~ 0
Reset
Wire Wire Line
	2400 4300 2500 4300
Text GLabel 1750 3850 0    60   Input ~ 0
Board4
Wire Wire Line
	1750 3850 1850 3850
Text GLabel 3500 3350 2    60   Output ~ 0
User4
Wire Wire Line
	3150 3350 3200 3350
$Comp
L ttt_ttl-rescue:R_Small R3
U 1 1 5CF7B154
P 1250 3550
F 0 "R3" H 1350 3600 50  0000 L CNN
F 1 "1K" H 1350 3500 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 1250 3550 50  0001 C CNN
F 3 "" H 1250 3550 50  0001 C CNN
	1    1250 3550
	1    0    0    -1  
$EndComp
Text GLabel 1150 3700 0    60   Input ~ 0
Lo
Text GLabel 1150 2850 0    60   Input ~ 0
Hi
Wire Wire Line
	1150 2850 1250 2850
Wire Wire Line
	1250 2850 1250 2900
Wire Wire Line
	1150 3700 1250 3700
$Comp
L ttt_ttl-rescue:LED_Small_ALT D2
U 1 1 5CF7BC43
P 3200 3100
F 0 "D2" V 3300 3150 50  0000 L CNN
F 1 "LED" V 3200 3200 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 3200 3100 50  0001 C CNN
F 3 "" V 3200 3100 50  0001 C CNN
	1    3200 3100
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R8
U 1 1 5CF7BC44
P 3350 2900
F 0 "R8" V 3250 2950 50  0000 L CNN
F 1 "1K" V 3250 2750 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 3350 2900 50  0001 C CNN
F 3 "" H 3350 2900 50  0001 C CNN
	1    3350 2900
	0    1    1    0   
$EndComp
Text GLabel 3550 2900 2    60   Input ~ 0
Lo
Wire Wire Line
	3550 2900 3450 2900
Wire Wire Line
	3200 3200 3200 3350
Connection ~ 3200 3350
Wire Wire Line
	3250 2900 3200 2900
Wire Wire Line
	3200 2900 3200 3000
$Comp
L ttt_ttl-rescue:74LS107 U5
U 1 1 5CF7BC45
P 6200 3600
F 0 "U5" H 6200 3700 50  0000 C CNN
F 1 "74LS109" H 6200 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6200 3600 50  0001 C CNN
F 3 "" H 6200 3600 50  0001 C CNN
	1    6200 3600
	1    0    0    -1  
$EndComp
Text GLabel 5450 3600 0    60   Input ~ 0
Clk
Wire Wire Line
	5450 3600 5550 3600
NoConn ~ 6850 3850
Text GLabel 6100 4300 0    60   Input ~ 0
Reset
Wire Wire Line
	6100 4300 6200 4300
Text GLabel 5450 3850 0    60   Input ~ 0
Board5
Wire Wire Line
	5450 3850 5550 3850
Text GLabel 7200 3350 2    60   Output ~ 0
User5
Wire Wire Line
	6850 3350 6900 3350
$Comp
L ttt_ttl-rescue:LED_Small_ALT D5
U 1 1 5CF7B1A0
P 6900 3100
F 0 "D5" V 7000 3150 50  0000 L CNN
F 1 "LED" V 6900 3200 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 6900 3100 50  0001 C CNN
F 3 "" V 6900 3100 50  0001 C CNN
	1    6900 3100
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R17
U 1 1 5CF7B1A6
P 7050 2900
F 0 "R17" V 6950 2950 50  0000 L CNN
F 1 "1K" V 6950 2750 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 7050 2900 50  0001 C CNN
F 3 "" H 7050 2900 50  0001 C CNN
	1    7050 2900
	0    1    1    0   
$EndComp
Text GLabel 7250 2900 2    60   Input ~ 0
Lo
Wire Wire Line
	7250 2900 7150 2900
Wire Wire Line
	6900 3200 6900 3350
Connection ~ 6900 3350
Wire Wire Line
	6950 2900 6900 2900
Wire Wire Line
	6900 2900 6900 3000
$Comp
L ttt_ttl-rescue:74LS107 U6
U 1 1 5CF7B1B2
P 9750 3600
F 0 "U6" H 9750 3700 50  0000 C CNN
F 1 "74LS109" H 9750 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9750 3600 50  0001 C CNN
F 3 "" H 9750 3600 50  0001 C CNN
	1    9750 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3600 9100 3600
NoConn ~ 10400 3850
Text GLabel 9650 4300 0    60   Input ~ 0
Reset
Wire Wire Line
	9650 4300 9750 4300
Text GLabel 9000 3850 0    60   Input ~ 0
Board6
Wire Wire Line
	9000 3850 9100 3850
Text GLabel 10750 3350 2    60   Output ~ 0
User6
Wire Wire Line
	10400 3350 10450 3350
$Comp
L ttt_ttl-rescue:LED_Small_ALT D8
U 1 1 5CF7B1DD
P 10450 3100
F 0 "D8" V 10550 3150 50  0000 L CNN
F 1 "LED" V 10450 3200 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 10450 3100 50  0001 C CNN
F 3 "" V 10450 3100 50  0001 C CNN
	1    10450 3100
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R26
U 1 1 5CF7BC4A
P 10600 2900
F 0 "R26" V 10500 2950 50  0000 L CNN
F 1 "1K" V 10500 2750 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 10600 2900 50  0001 C CNN
F 3 "" H 10600 2900 50  0001 C CNN
	1    10600 2900
	0    1    1    0   
$EndComp
Text GLabel 10800 2900 2    60   Input ~ 0
Lo
Wire Wire Line
	10800 2900 10700 2900
Wire Wire Line
	10450 3200 10450 3350
Connection ~ 10450 3350
Wire Wire Line
	10500 2900 10450 2900
Wire Wire Line
	10450 2900 10450 3000
$Comp
L ttt_ttl-rescue:74LS107 U7
U 1 1 5CF7BC4B
P 2500 5500
F 0 "U7" H 2500 5600 50  0000 C CNN
F 1 "74LS109" H 2500 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2500 5500 50  0001 C CNN
F 3 "" H 2500 5500 50  0001 C CNN
	1    2500 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5500 1850 5500
NoConn ~ 3150 5750
Text GLabel 2400 6200 0    60   Input ~ 0
Reset
Wire Wire Line
	2400 6200 2500 6200
Text GLabel 1750 5750 0    60   Input ~ 0
Board7
Wire Wire Line
	1750 5750 1850 5750
Text GLabel 3500 5250 2    60   Output ~ 0
User7
Wire Wire Line
	3150 5250 3200 5250
$Comp
L ttt_ttl-rescue:LED_Small_ALT D3
U 1 1 5CF7BC4C
P 3200 5000
F 0 "D3" V 3300 5050 50  0000 L CNN
F 1 "LED" V 3200 5100 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 3200 5000 50  0001 C CNN
F 3 "" V 3200 5000 50  0001 C CNN
	1    3200 5000
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R9
U 1 1 5CF7BC4D
P 3350 4800
F 0 "R9" V 3250 4850 50  0000 L CNN
F 1 "1K" V 3250 4650 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 3350 4800 50  0001 C CNN
F 3 "" H 3350 4800 50  0001 C CNN
	1    3350 4800
	0    1    1    0   
$EndComp
Text GLabel 3550 4800 2    60   Input ~ 0
Lo
Wire Wire Line
	3550 4800 3450 4800
Wire Wire Line
	3200 5100 3200 5250
Connection ~ 3200 5250
Wire Wire Line
	3250 4800 3200 4800
Wire Wire Line
	3200 4800 3200 4900
$Comp
L ttt_ttl-rescue:74LS107 U8
U 1 1 5CF7B8A4
P 6200 5500
F 0 "U8" H 6200 5600 50  0000 C CNN
F 1 "74LS109" H 6200 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6200 5500 50  0001 C CNN
F 3 "" H 6200 5500 50  0001 C CNN
	1    6200 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5500 5550 5500
NoConn ~ 6850 5750
Text GLabel 6100 6200 0    60   Input ~ 0
Reset
Wire Wire Line
	6100 6200 6200 6200
Text GLabel 5450 5750 0    60   Input ~ 0
Board8
Wire Wire Line
	5450 5750 5550 5750
Text GLabel 7200 5250 2    60   Output ~ 0
User8
Wire Wire Line
	6850 5250 6900 5250
$Comp
L ttt_ttl-rescue:LED_Small_ALT D6
U 1 1 5CF7BC4F
P 6900 5000
F 0 "D6" V 7000 5050 50  0000 L CNN
F 1 "LED" V 6900 5100 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 6900 5000 50  0001 C CNN
F 3 "" V 6900 5000 50  0001 C CNN
	1    6900 5000
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R18
U 1 1 5CF7B8D5
P 7050 4800
F 0 "R18" V 6950 4850 50  0000 L CNN
F 1 "1K" V 6950 4650 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 7050 4800 50  0001 C CNN
F 3 "" H 7050 4800 50  0001 C CNN
	1    7050 4800
	0    1    1    0   
$EndComp
Text GLabel 7250 4800 2    60   Input ~ 0
Lo
Wire Wire Line
	7250 4800 7150 4800
Wire Wire Line
	6900 5100 6900 5250
Connection ~ 6900 5250
Wire Wire Line
	6950 4800 6900 4800
Wire Wire Line
	6900 4800 6900 4900
$Comp
L ttt_ttl-rescue:74LS107 U9
U 1 1 5CF7B8E1
P 9750 5500
F 0 "U9" H 9750 5600 50  0000 C CNN
F 1 "74LS109" H 9750 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9750 5500 50  0001 C CNN
F 3 "" H 9750 5500 50  0001 C CNN
	1    9750 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5500 9100 5500
NoConn ~ 10400 5750
Text GLabel 9650 6200 0    60   Input ~ 0
Reset
Wire Wire Line
	9650 6200 9750 6200
Text GLabel 9000 5750 0    60   Input ~ 0
Board9
Wire Wire Line
	9000 5750 9100 5750
Text GLabel 10750 5250 2    60   Output ~ 0
User9
Wire Wire Line
	10400 5250 10450 5250
$Comp
L ttt_ttl-rescue:LED_Small_ALT D9
U 1 1 5CF7B90C
P 10450 5000
F 0 "D9" V 10550 5050 50  0000 L CNN
F 1 "LED" V 10450 5100 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 10450 5000 50  0001 C CNN
F 3 "" V 10450 5000 50  0001 C CNN
	1    10450 5000
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R27
U 1 1 5CF7B912
P 10600 4800
F 0 "R27" V 10500 4850 50  0000 L CNN
F 1 "1K" V 10500 4650 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 10600 4800 50  0001 C CNN
F 3 "" H 10600 4800 50  0001 C CNN
	1    10600 4800
	0    1    1    0   
$EndComp
Text GLabel 10800 4800 2    60   Input ~ 0
Lo
Wire Wire Line
	10800 4800 10700 4800
Wire Wire Line
	10450 5100 10450 5250
Connection ~ 10450 5250
Wire Wire Line
	10500 4800 10450 4800
Wire Wire Line
	10450 4800 10450 4900
Wire Wire Line
	3150 1300 3450 1300
Wire Wire Line
	6850 1300 7150 1300
Wire Wire Line
	10400 1300 10700 1300
Wire Wire Line
	3200 3350 3500 3350
Wire Wire Line
	6900 3350 7200 3350
Wire Wire Line
	10450 3350 10750 3350
Wire Wire Line
	3200 5250 3500 5250
Wire Wire Line
	6900 5250 7200 5250
Wire Wire Line
	10450 5250 10750 5250
Wire Wire Line
	1250 3300 1250 3350
Wire Wire Line
	1250 3350 1850 3350
Connection ~ 1250 3350
Wire Wire Line
	1250 3350 1250 3450
Wire Wire Line
	1250 3650 1250 3700
$Comp
L ttt_ttl-rescue:SW_Push SW4
U 1 1 5CFF1C41
P 4850 3100
F 0 "SW4" V 4800 3200 50  0000 L CNN
F 1 "SW_Push" V 4700 3350 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 4850 3300 50  0001 C CNN
F 3 "" H 4850 3300 50  0001 C CNN
	1    4850 3100
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R4
U 1 1 5CFF1C47
P 4850 3550
F 0 "R4" H 4950 3600 50  0000 L CNN
F 1 "1K" H 4950 3500 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4850 3550 50  0001 C CNN
F 3 "" H 4850 3550 50  0001 C CNN
	1    4850 3550
	1    0    0    -1  
$EndComp
Text GLabel 4750 3700 0    60   Input ~ 0
Lo
Text GLabel 4750 2850 0    60   Input ~ 0
Hi
Wire Wire Line
	4750 2850 4850 2850
Wire Wire Line
	4850 2850 4850 2900
Wire Wire Line
	4750 3700 4850 3700
Wire Wire Line
	4850 3300 4850 3350
Connection ~ 4850 3350
Wire Wire Line
	4850 3350 4850 3450
Wire Wire Line
	4850 3650 4850 3700
Wire Wire Line
	4850 3350 5550 3350
Text GLabel 9000 3600 0    60   Input ~ 0
Clk
$Comp
L ttt_ttl-rescue:SW_Push SW8
U 1 1 5D023DFC
P 8500 3100
F 0 "SW8" V 8450 3200 50  0000 L CNN
F 1 "SW_Push" V 8350 3350 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 8500 3300 50  0001 C CNN
F 3 "" H 8500 3300 50  0001 C CNN
	1    8500 3100
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R11
U 1 1 5D023E02
P 8500 3550
F 0 "R11" H 8600 3600 50  0000 L CNN
F 1 "1K" H 8600 3500 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 8500 3550 50  0001 C CNN
F 3 "" H 8500 3550 50  0001 C CNN
	1    8500 3550
	1    0    0    -1  
$EndComp
Text GLabel 8400 3700 0    60   Input ~ 0
Lo
Text GLabel 8400 2850 0    60   Input ~ 0
Hi
Wire Wire Line
	8400 2850 8500 2850
Wire Wire Line
	8500 2850 8500 2900
Wire Wire Line
	8400 3700 8500 3700
Wire Wire Line
	8500 3300 8500 3350
Wire Wire Line
	8500 3350 9100 3350
Connection ~ 8500 3350
Wire Wire Line
	8500 3350 8500 3450
Wire Wire Line
	8500 3650 8500 3700
$Comp
L ttt_ttl-rescue:74LS107 U3
U 1 1 5CF7BC3F
P 9700 1550
F 0 "U3" H 9700 1650 50  0000 C CNN
F 1 "74LS109" H 9700 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9700 1550 50  0001 C CNN
F 3 "" H 9700 1550 50  0001 C CNN
	1    9700 1550
	1    0    0    -1  
$EndComp
Text GLabel 8950 1550 0    60   Input ~ 0
Clk
$Comp
L ttt_ttl-rescue:SW_Push SW7
U 1 1 5D03DCCD
P 8450 1050
F 0 "SW7" V 8400 1150 50  0000 L CNN
F 1 "SW_Push" V 8300 1300 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 8450 1250 50  0001 C CNN
F 3 "" H 8450 1250 50  0001 C CNN
	1    8450 1050
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R10
U 1 1 5D03DCD3
P 8450 1500
F 0 "R10" H 8550 1550 50  0000 L CNN
F 1 "1K" H 8550 1450 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 8450 1500 50  0001 C CNN
F 3 "" H 8450 1500 50  0001 C CNN
	1    8450 1500
	1    0    0    -1  
$EndComp
Text GLabel 8350 1650 0    60   Input ~ 0
Lo
Text GLabel 8350 800  0    60   Input ~ 0
Hi
Wire Wire Line
	8350 800  8450 800 
Wire Wire Line
	8450 800  8450 850 
Wire Wire Line
	8350 1650 8450 1650
Wire Wire Line
	8450 1250 8450 1300
Wire Wire Line
	8450 1300 9050 1300
Connection ~ 8450 1300
Wire Wire Line
	8450 1300 8450 1400
Wire Wire Line
	8450 1600 8450 1650
Text GLabel 5400 1550 0    60   Input ~ 0
Clk
$Comp
L ttt_ttl-rescue:SW_Push SW5
U 1 1 5D050217
P 4900 1050
F 0 "SW5" V 4850 1150 50  0000 L CNN
F 1 "SW_Push" V 4750 1300 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 4900 1250 50  0001 C CNN
F 3 "" H 4900 1250 50  0001 C CNN
	1    4900 1050
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R5
U 1 1 5D05021D
P 4900 1500
F 0 "R5" H 5000 1550 50  0000 L CNN
F 1 "1K" H 5000 1450 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4900 1500 50  0001 C CNN
F 3 "" H 4900 1500 50  0001 C CNN
	1    4900 1500
	1    0    0    -1  
$EndComp
Text GLabel 4800 1650 0    60   Input ~ 0
Lo
Text GLabel 4800 800  0    60   Input ~ 0
Hi
Wire Wire Line
	4800 800  4900 800 
Wire Wire Line
	4900 800  4900 850 
Wire Wire Line
	4800 1650 4900 1650
Wire Wire Line
	4900 1250 4900 1300
Wire Wire Line
	4900 1300 5500 1300
Connection ~ 4900 1300
Wire Wire Line
	4900 1300 4900 1400
Wire Wire Line
	4900 1600 4900 1650
Text GLabel 1700 1550 0    60   Input ~ 0
Clk
$Comp
L ttt_ttl-rescue:SW_Push SW1
U 1 1 5D063141
P 1200 1050
F 0 "SW1" V 1150 1150 50  0000 L CNN
F 1 "SW_Push" V 1050 1300 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 1200 1250 50  0001 C CNN
F 3 "" H 1200 1250 50  0001 C CNN
	1    1200 1050
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R1
U 1 1 5D063147
P 1200 1500
F 0 "R1" H 1300 1550 50  0000 L CNN
F 1 "1K" H 1300 1450 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 1200 1500 50  0001 C CNN
F 3 "" H 1200 1500 50  0001 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
Text GLabel 1100 1650 0    60   Input ~ 0
Lo
Text GLabel 1100 800  0    60   Input ~ 0
Hi
Wire Wire Line
	1100 800  1200 800 
Wire Wire Line
	1200 800  1200 850 
Wire Wire Line
	1100 1650 1200 1650
Wire Wire Line
	1200 1250 1200 1300
Wire Wire Line
	1200 1300 1800 1300
Connection ~ 1200 1300
Wire Wire Line
	1200 1300 1200 1400
Wire Wire Line
	1200 1600 1200 1650
Text GLabel 1750 5500 0    60   Input ~ 0
Clk
$Comp
L ttt_ttl-rescue:SW_Push SW3
U 1 1 5D077D87
P 1250 5000
F 0 "SW3" V 1200 5100 50  0000 L CNN
F 1 "SW_Push" V 1100 5250 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 1250 5200 50  0001 C CNN
F 3 "" H 1250 5200 50  0001 C CNN
	1    1250 5000
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R2
U 1 1 5D077D8D
P 1250 5450
F 0 "R2" H 1350 5500 50  0000 L CNN
F 1 "1K" H 1350 5400 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 1250 5450 50  0001 C CNN
F 3 "" H 1250 5450 50  0001 C CNN
	1    1250 5450
	1    0    0    -1  
$EndComp
Text GLabel 1150 5600 0    60   Input ~ 0
Lo
Text GLabel 1150 4750 0    60   Input ~ 0
Hi
Wire Wire Line
	1150 4750 1250 4750
Wire Wire Line
	1250 4750 1250 4800
Wire Wire Line
	1150 5600 1250 5600
Wire Wire Line
	1250 5200 1250 5250
Wire Wire Line
	1250 5250 1850 5250
Connection ~ 1250 5250
Wire Wire Line
	1250 5250 1250 5350
Wire Wire Line
	1250 5550 1250 5600
Text GLabel 5450 5500 0    60   Input ~ 0
Clk
$Comp
L ttt_ttl-rescue:SW_Push SW6
U 1 1 5D08B9E1
P 4950 5000
F 0 "SW6" V 4900 5100 50  0000 L CNN
F 1 "SW_Push" V 4800 5250 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 4950 5200 50  0001 C CNN
F 3 "" H 4950 5200 50  0001 C CNN
	1    4950 5000
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R6
U 1 1 5D08B9E7
P 4950 5450
F 0 "R6" H 5050 5500 50  0000 L CNN
F 1 "1K" H 5050 5400 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4950 5450 50  0001 C CNN
F 3 "" H 4950 5450 50  0001 C CNN
	1    4950 5450
	1    0    0    -1  
$EndComp
Text GLabel 4850 5600 0    60   Input ~ 0
Lo
Text GLabel 4850 4750 0    60   Input ~ 0
Hi
Wire Wire Line
	4850 4750 4950 4750
Wire Wire Line
	4950 4750 4950 4800
Wire Wire Line
	4850 5600 4950 5600
Wire Wire Line
	4950 5200 4950 5250
Wire Wire Line
	4950 5250 5550 5250
Connection ~ 4950 5250
Wire Wire Line
	4950 5250 4950 5350
Wire Wire Line
	4950 5550 4950 5600
Text GLabel 9000 5500 0    60   Input ~ 0
Clk
$Comp
L ttt_ttl-rescue:SW_Push SW9
U 1 1 5D09F3BB
P 8500 5000
F 0 "SW9" V 8450 5100 50  0000 L CNN
F 1 "SW_Push" V 8350 5250 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 8500 5200 50  0001 C CNN
F 3 "" H 8500 5200 50  0001 C CNN
	1    8500 5000
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R12
U 1 1 5D09F3C1
P 8500 5450
F 0 "R12" H 8600 5500 50  0000 L CNN
F 1 "1K" H 8600 5400 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 8500 5450 50  0001 C CNN
F 3 "" H 8500 5450 50  0001 C CNN
	1    8500 5450
	1    0    0    -1  
$EndComp
Text GLabel 8400 5600 0    60   Input ~ 0
Lo
Text GLabel 8400 4750 0    60   Input ~ 0
Hi
Wire Wire Line
	8400 4750 8500 4750
Wire Wire Line
	8500 4750 8500 4800
Wire Wire Line
	8400 5600 8500 5600
Wire Wire Line
	8500 5200 8500 5250
Wire Wire Line
	8500 5250 9100 5250
Connection ~ 8500 5250
Wire Wire Line
	8500 5250 8500 5350
Wire Wire Line
	8500 5550 8500 5600
$EndSCHEMATC
