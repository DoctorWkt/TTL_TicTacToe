EESchema Schematic File Version 4
LIBS:ttt_ttl-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1700 1550 0    60   Input ~ 0
Clk
Wire Wire Line
	1700 1550 1800 1550
Wire Wire Line
	1700 1300 1800 1300
NoConn ~ 3100 1800
Text GLabel 2350 2250 0    60   Input ~ 0
Reset
Wire Wire Line
	2350 2250 2450 2250
Text GLabel 1700 1300 0    60   Input ~ 0
Move1
Text GLabel 3450 1300 2    60   Output ~ 0
Board1
Wire Wire Line
	3100 1300 3150 1300
$Comp
L ttt_ttl-rescue:LED_Small_ALT D10
U 1 1 5CF7BC3A
P 3150 1050
F 0 "D10" V 3250 1100 50  0000 L CNN
F 1 "LED" V 3150 1150 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 3150 1050 50  0001 C CNN
F 3 "" V 3150 1050 50  0001 C CNN
	1    3150 1050
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R28
U 1 1 5CF78DAF
P 3300 850
F 0 "R28" V 3200 900 50  0000 L CNN
F 1 "10K" V 3200 700 50  0000 L CNN
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
U 2 1 5CF796C7
P 6150 1550
F 0 "U2" H 6150 1650 50  0000 C CNN
F 1 "74LS107" H 6150 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6150 1550 50  0001 C CNN
F 3 "" H 6150 1550 50  0001 C CNN
	2    6150 1550
	1    0    0    -1  
$EndComp
Text GLabel 5400 1550 0    60   Input ~ 0
Clk
Wire Wire Line
	5400 1550 5500 1550
Wire Wire Line
	5400 1300 5500 1300
NoConn ~ 6800 1800
Text GLabel 6050 2250 0    60   Input ~ 0
Reset
Wire Wire Line
	6050 2250 6150 2250
Text GLabel 5400 1300 0    60   Input ~ 0
Move2
Text GLabel 7150 1300 2    60   Output ~ 0
Board2
Wire Wire Line
	6800 1300 6850 1300
$Comp
L ttt_ttl-rescue:LED_Small_ALT D13
U 1 1 5CF796F2
P 6850 1050
F 0 "D13" V 6950 1100 50  0000 L CNN
F 1 "LED" V 6850 1150 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 6850 1050 50  0001 C CNN
F 3 "" V 6850 1050 50  0001 C CNN
	1    6850 1050
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R31
U 1 1 5CF796F8
P 7000 850
F 0 "R31" V 6900 900 50  0000 L CNN
F 1 "10K" V 6900 700 50  0000 L CNN
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
$Comp
L ttt_ttl-rescue:74LS107 U3
U 2 1 5CF79A8E
P 9700 1550
F 0 "U3" H 9700 1650 50  0000 C CNN
F 1 "74LS107" H 9700 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9700 1550 50  0001 C CNN
F 3 "" H 9700 1550 50  0001 C CNN
	2    9700 1550
	1    0    0    -1  
$EndComp
Text GLabel 8950 1550 0    60   Input ~ 0
Clk
Wire Wire Line
	8950 1550 9050 1550
Wire Wire Line
	8950 1300 9050 1300
NoConn ~ 10350 1800
Text GLabel 9600 2250 0    60   Input ~ 0
Reset
Wire Wire Line
	9600 2250 9700 2250
Text GLabel 8950 1300 0    60   Input ~ 0
Move3
Text GLabel 10700 1300 2    60   Output ~ 0
Board3
Wire Wire Line
	10350 1300 10400 1300
$Comp
L ttt_ttl-rescue:LED_Small_ALT D16
U 1 1 5CF79AB9
P 10400 1050
F 0 "D16" V 10500 1100 50  0000 L CNN
F 1 "LED" V 10400 1150 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 10400 1050 50  0001 C CNN
F 3 "" V 10400 1050 50  0001 C CNN
	1    10400 1050
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R34
U 1 1 5CF79ABF
P 10550 850
F 0 "R34" V 10450 900 50  0000 L CNN
F 1 "10K" V 10450 700 50  0000 L CNN
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
U 2 1 5CF7B138
P 2500 3600
F 0 "U4" H 2500 3700 50  0000 C CNN
F 1 "74LS107" H 2500 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2500 3600 50  0001 C CNN
F 3 "" H 2500 3600 50  0001 C CNN
	2    2500 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3600 1850 3600
Wire Wire Line
	1750 3350 1850 3350
NoConn ~ 3150 3850
Text GLabel 2400 4300 0    60   Input ~ 0
Reset
Wire Wire Line
	2400 4300 2500 4300
Text GLabel 1750 3350 0    60   Input ~ 0
Move4
Text GLabel 3500 3350 2    60   Output ~ 0
Board4
Wire Wire Line
	3150 3350 3200 3350
$Comp
L ttt_ttl-rescue:LED_Small_ALT D11
U 1 1 5CF7B163
P 3200 3100
F 0 "D11" V 3300 3150 50  0000 L CNN
F 1 "LED" V 3200 3200 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 3200 3100 50  0001 C CNN
F 3 "" V 3200 3100 50  0001 C CNN
	1    3200 3100
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R29
U 1 1 5CF7B169
P 3350 2900
F 0 "R29" V 3250 2950 50  0000 L CNN
F 1 "10K" V 3250 2750 50  0000 L CNN
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
U 2 1 5CF7B175
P 6200 3600
F 0 "U5" H 6200 3700 50  0000 C CNN
F 1 "74LS107" H 6200 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6200 3600 50  0001 C CNN
F 3 "" H 6200 3600 50  0001 C CNN
	2    6200 3600
	1    0    0    -1  
$EndComp
Text GLabel 5450 3600 0    60   Input ~ 0
Clk
Wire Wire Line
	5450 3600 5550 3600
Wire Wire Line
	5450 3350 5550 3350
NoConn ~ 6850 3850
Text GLabel 6100 4300 0    60   Input ~ 0
Reset
Wire Wire Line
	6100 4300 6200 4300
Text GLabel 5450 3350 0    60   Input ~ 0
Move5
Text GLabel 7200 3350 2    60   Output ~ 0
Board5
Wire Wire Line
	6850 3350 6900 3350
$Comp
L ttt_ttl-rescue:LED_Small_ALT D14
U 1 1 5CF7BC46
P 6900 3100
F 0 "D14" V 7000 3150 50  0000 L CNN
F 1 "LED" V 6900 3200 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 6900 3100 50  0001 C CNN
F 3 "" V 6900 3100 50  0001 C CNN
	1    6900 3100
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R32
U 1 1 5CF7BC47
P 7050 2900
F 0 "R32" V 6950 2950 50  0000 L CNN
F 1 "10K" V 6950 2750 50  0000 L CNN
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
U 2 1 5CF7BC48
P 9750 3600
F 0 "U6" H 9750 3700 50  0000 C CNN
F 1 "74LS107" H 9750 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9750 3600 50  0001 C CNN
F 3 "" H 9750 3600 50  0001 C CNN
	2    9750 3600
	1    0    0    -1  
$EndComp
Text GLabel 9000 3600 0    60   Input ~ 0
Clk
Wire Wire Line
	9000 3600 9100 3600
Wire Wire Line
	9000 3350 9100 3350
NoConn ~ 10400 3850
Text GLabel 9650 4300 0    60   Input ~ 0
Reset
Wire Wire Line
	9650 4300 9750 4300
Text GLabel 9000 3350 0    60   Input ~ 0
Move6
Text GLabel 10750 3350 2    60   Output ~ 0
Board6
Wire Wire Line
	10400 3350 10450 3350
$Comp
L ttt_ttl-rescue:LED_Small_ALT D17
U 1 1 5CF7BC49
P 10450 3100
F 0 "D17" V 10550 3150 50  0000 L CNN
F 1 "LED" V 10450 3200 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 10450 3100 50  0001 C CNN
F 3 "" V 10450 3100 50  0001 C CNN
	1    10450 3100
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R35
U 1 1 5CF7B1E3
P 10600 2900
F 0 "R35" V 10500 2950 50  0000 L CNN
F 1 "10K" V 10500 2750 50  0000 L CNN
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
U 2 1 5CF7B867
P 2500 5500
F 0 "U7" H 2500 5600 50  0000 C CNN
F 1 "74LS107" H 2500 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2500 5500 50  0001 C CNN
F 3 "" H 2500 5500 50  0001 C CNN
	2    2500 5500
	1    0    0    -1  
$EndComp
Text GLabel 1750 5500 0    60   Input ~ 0
Clk
Wire Wire Line
	1750 5500 1850 5500
Wire Wire Line
	1750 5250 1850 5250
NoConn ~ 3150 5750
Text GLabel 2400 6200 0    60   Input ~ 0
Reset
Wire Wire Line
	2400 6200 2500 6200
Text GLabel 1750 5250 0    60   Input ~ 0
Move7
Text GLabel 3500 5250 2    60   Output ~ 0
Board7
Wire Wire Line
	3150 5250 3200 5250
$Comp
L ttt_ttl-rescue:LED_Small_ALT D12
U 1 1 5CF7B892
P 3200 5000
F 0 "D12" V 3300 5050 50  0000 L CNN
F 1 "LED" V 3200 5100 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 3200 5000 50  0001 C CNN
F 3 "" V 3200 5000 50  0001 C CNN
	1    3200 5000
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R30
U 1 1 5CF7B898
P 3350 4800
F 0 "R30" V 3250 4850 50  0000 L CNN
F 1 "10K" V 3250 4650 50  0000 L CNN
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
U 2 1 5CF7BC4E
P 6200 5500
F 0 "U8" H 6200 5600 50  0000 C CNN
F 1 "74LS107" H 6200 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6200 5500 50  0001 C CNN
F 3 "" H 6200 5500 50  0001 C CNN
	2    6200 5500
	1    0    0    -1  
$EndComp
Text GLabel 5450 5500 0    60   Input ~ 0
Clk
Wire Wire Line
	5450 5500 5550 5500
Wire Wire Line
	5450 5250 5550 5250
NoConn ~ 6850 5750
Text GLabel 6100 6200 0    60   Input ~ 0
Reset
Wire Wire Line
	6100 6200 6200 6200
Text GLabel 5450 5250 0    60   Input ~ 0
Move8
Text GLabel 7200 5250 2    60   Output ~ 0
Board8
Wire Wire Line
	6850 5250 6900 5250
$Comp
L ttt_ttl-rescue:LED_Small_ALT D15
U 1 1 5CF7B8CF
P 6900 5000
F 0 "D15" V 7000 5050 50  0000 L CNN
F 1 "LED" V 6900 5100 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 6900 5000 50  0001 C CNN
F 3 "" V 6900 5000 50  0001 C CNN
	1    6900 5000
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R33
U 1 1 5CF7BC50
P 7050 4800
F 0 "R33" V 6950 4850 50  0000 L CNN
F 1 "10K" V 6950 4650 50  0000 L CNN
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
U 2 1 5CF7BC51
P 9750 5500
F 0 "U9" H 9750 5600 50  0000 C CNN
F 1 "74LS107" H 9750 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9750 5500 50  0001 C CNN
F 3 "" H 9750 5500 50  0001 C CNN
	2    9750 5500
	1    0    0    -1  
$EndComp
Text GLabel 9000 5500 0    60   Input ~ 0
Clk
Wire Wire Line
	9000 5500 9100 5500
Wire Wire Line
	9000 5250 9100 5250
NoConn ~ 10400 5750
Text GLabel 9650 6200 0    60   Input ~ 0
Reset
Wire Wire Line
	9650 6200 9750 6200
Text GLabel 9000 5250 0    60   Input ~ 0
Move9
Text GLabel 10750 5250 2    60   Output ~ 0
Board9
Wire Wire Line
	10400 5250 10450 5250
$Comp
L ttt_ttl-rescue:LED_Small_ALT D18
U 1 1 5CF7BC52
P 10450 5000
F 0 "D18" V 10550 5050 50  0000 L CNN
F 1 "LED" V 10450 5100 50  0000 L CNN
F 2 "Diode_THT:D_DO-41_SOD81_P7.62mm_Horizontal" V 10450 5000 50  0001 C CNN
F 3 "" V 10450 5000 50  0001 C CNN
	1    10450 5000
	0    1    1    0   
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R36
U 1 1 5CF7BC53
P 10600 4800
F 0 "R36" V 10500 4850 50  0000 L CNN
F 1 "10K" V 10500 4650 50  0000 L CNN
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
$Comp
L ttt_ttl-rescue:74LS107 U1
U 2 1 5CF77C50
P 2450 1550
F 0 "U1" H 2450 1650 50  0000 C CNN
F 1 "74LS107" H 2450 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2450 1550 50  0001 C CNN
F 3 "" H 2450 1550 50  0001 C CNN
	2    2450 1550
	1    0    0    -1  
$EndComp
NoConn ~ 1800 1800
NoConn ~ 5500 1800
NoConn ~ 9050 1800
NoConn ~ 9100 3850
NoConn ~ 5550 3850
NoConn ~ 1850 3850
NoConn ~ 1850 5750
NoConn ~ 5550 5750
NoConn ~ 9100 5750
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
Text GLabel 1750 3600 0    60   Input ~ 0
Clk
$EndSCHEMATC
