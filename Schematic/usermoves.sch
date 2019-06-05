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
F 1 "74LS107" H 2450 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2450 1550 50  0001 C CNN
F 3 "" H 2450 1550 50  0001 C CNN
	1    2450 1550
	1    0    0    -1  
$EndComp
Text GLabel 1700 1550 0    60   Input ~ 0
Clk
Wire Wire Line
	1700 1550 1800 1550
$Comp
L ttt_ttl-rescue:SW_Push SW1
U 1 1 5CF78982
P 1500 1300
F 0 "SW1" H 1550 1400 50  0000 L CNN
F 1 "SW_Push" H 1500 1240 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 1500 1500 50  0001 C CNN
F 3 "" H 1500 1500 50  0001 C CNN
	1    1500 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 1300 1800 1300
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
L ttt_ttl-rescue:R_Small R2
U 1 1 5CF78AFF
P 900 1500
F 0 "R2" H 1000 1550 50  0000 L CNN
F 1 "10K" H 1000 1450 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 900 1500 50  0001 C CNN
F 3 "" H 900 1500 50  0001 C CNN
	1    900  1500
	1    0    0    -1  
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R1
U 1 1 5CF78B83
P 900 1100
F 0 "R1" H 1000 1150 50  0000 L CNN
F 1 "1K" H 1000 1050 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 900 1100 50  0001 C CNN
F 3 "" H 900 1100 50  0001 C CNN
	1    900  1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 1300 900  1300
Wire Wire Line
	900  1200 900  1300
Connection ~ 900  1300
Text GLabel 800  1650 0    60   Input ~ 0
Lo
Text GLabel 800  950  0    60   Input ~ 0
Hi
Wire Wire Line
	800  950  900  950 
Wire Wire Line
	900  950  900  1000
Wire Wire Line
	800  1650 900  1650
Wire Wire Line
	900  1650 900  1600
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
U 1 1 5CF7BC3C
P 6150 1550
F 0 "U2" H 6150 1650 50  0000 C CNN
F 1 "74LS107" H 6150 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6150 1550 50  0001 C CNN
F 3 "" H 6150 1550 50  0001 C CNN
	1    6150 1550
	1    0    0    -1  
$EndComp
Text GLabel 5400 1550 0    60   Input ~ 0
Clk
Wire Wire Line
	5400 1550 5500 1550
$Comp
L ttt_ttl-rescue:SW_Push SW4
U 1 1 5CF796CF
P 5200 1300
F 0 "SW4" H 5250 1400 50  0000 L CNN
F 1 "SW_Push" H 5200 1240 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 5200 1500 50  0001 C CNN
F 3 "" H 5200 1500 50  0001 C CNN
	1    5200 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1300 5500 1300
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
L ttt_ttl-rescue:R_Small R11
U 1 1 5CF796DD
P 4600 1500
F 0 "R11" H 4700 1550 50  0000 L CNN
F 1 "10K" H 4700 1450 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4600 1500 50  0001 C CNN
F 3 "" H 4600 1500 50  0001 C CNN
	1    4600 1500
	1    0    0    -1  
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R10
U 1 1 5CF796E3
P 4600 1100
F 0 "R10" H 4700 1150 50  0000 L CNN
F 1 "1K" H 4700 1050 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4600 1100 50  0001 C CNN
F 3 "" H 4600 1100 50  0001 C CNN
	1    4600 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1300 4600 1300
Wire Wire Line
	4600 1200 4600 1300
Connection ~ 4600 1300
Text GLabel 4500 1650 0    60   Input ~ 0
Lo
Text GLabel 4500 950  0    60   Input ~ 0
Hi
Wire Wire Line
	4500 950  4600 950 
Wire Wire Line
	4600 950  4600 1000
Wire Wire Line
	4500 1650 4600 1650
Wire Wire Line
	4600 1650 4600 1600
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
U 1 1 5CF7BC3F
P 9700 1550
F 0 "U3" H 9700 1650 50  0000 C CNN
F 1 "74LS107" H 9700 1450 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9700 1550 50  0001 C CNN
F 3 "" H 9700 1550 50  0001 C CNN
	1    9700 1550
	1    0    0    -1  
$EndComp
Text GLabel 8950 1550 0    60   Input ~ 0
Clk
Wire Wire Line
	8950 1550 9050 1550
$Comp
L ttt_ttl-rescue:SW_Push SW7
U 1 1 5CF79A96
P 8750 1300
F 0 "SW7" H 8800 1400 50  0000 L CNN
F 1 "SW_Push" H 8750 1240 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 8750 1500 50  0001 C CNN
F 3 "" H 8750 1500 50  0001 C CNN
	1    8750 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 1300 9050 1300
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
L ttt_ttl-rescue:R_Small R20
U 1 1 5CF79AA4
P 8150 1500
F 0 "R20" H 8250 1550 50  0000 L CNN
F 1 "10K" H 8250 1450 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 8150 1500 50  0001 C CNN
F 3 "" H 8150 1500 50  0001 C CNN
	1    8150 1500
	1    0    0    -1  
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R19
U 1 1 5CF79AAA
P 8150 1100
F 0 "R19" H 8250 1150 50  0000 L CNN
F 1 "1K" H 8250 1050 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 8150 1100 50  0001 C CNN
F 3 "" H 8150 1100 50  0001 C CNN
	1    8150 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1300 8150 1300
Wire Wire Line
	8150 1200 8150 1300
Connection ~ 8150 1300
Text GLabel 8050 1650 0    60   Input ~ 0
Lo
Text GLabel 8050 950  0    60   Input ~ 0
Hi
Wire Wire Line
	8050 950  8150 950 
Wire Wire Line
	8150 950  8150 1000
Wire Wire Line
	8050 1650 8150 1650
Wire Wire Line
	8150 1650 8150 1600
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
U 1 1 5CF7BC42
P 2500 3600
F 0 "U4" H 2500 3700 50  0000 C CNN
F 1 "74LS107" H 2500 3500 50  0000 C CNN
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
P 1550 3350
F 0 "SW2" H 1600 3450 50  0000 L CNN
F 1 "SW_Push" H 1550 3290 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 1550 3550 50  0001 C CNN
F 3 "" H 1550 3550 50  0001 C CNN
	1    1550 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3350 1850 3350
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
L ttt_ttl-rescue:R_Small R4
U 1 1 5CF7B14E
P 950 3550
F 0 "R4" H 1050 3600 50  0000 L CNN
F 1 "10K" H 1050 3500 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 950 3550 50  0001 C CNN
F 3 "" H 950 3550 50  0001 C CNN
	1    950  3550
	1    0    0    -1  
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R3
U 1 1 5CF7B154
P 950 3150
F 0 "R3" H 1050 3200 50  0000 L CNN
F 1 "1K" H 1050 3100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 950 3150 50  0001 C CNN
F 3 "" H 950 3150 50  0001 C CNN
	1    950  3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3350 950  3350
Wire Wire Line
	950  3250 950  3350
Connection ~ 950  3350
Text GLabel 850  3700 0    60   Input ~ 0
Lo
Text GLabel 850  3000 0    60   Input ~ 0
Hi
Wire Wire Line
	850  3000 950  3000
Wire Wire Line
	950  3000 950  3050
Wire Wire Line
	850  3700 950  3700
Wire Wire Line
	950  3700 950  3650
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
U 1 1 5CF7BC45
P 6200 3600
F 0 "U5" H 6200 3700 50  0000 C CNN
F 1 "74LS107" H 6200 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6200 3600 50  0001 C CNN
F 3 "" H 6200 3600 50  0001 C CNN
	1    6200 3600
	1    0    0    -1  
$EndComp
Text GLabel 5450 3600 0    60   Input ~ 0
Clk
Wire Wire Line
	5450 3600 5550 3600
$Comp
L ttt_ttl-rescue:SW_Push SW5
U 1 1 5CF7B17D
P 5250 3350
F 0 "SW5" H 5300 3450 50  0000 L CNN
F 1 "SW_Push" H 5250 3290 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 5250 3550 50  0001 C CNN
F 3 "" H 5250 3550 50  0001 C CNN
	1    5250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 3350 5550 3350
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
L ttt_ttl-rescue:R_Small R13
U 1 1 5CF7B18B
P 4650 3550
F 0 "R13" H 4750 3600 50  0000 L CNN
F 1 "10K" H 4750 3500 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4650 3550 50  0001 C CNN
F 3 "" H 4650 3550 50  0001 C CNN
	1    4650 3550
	1    0    0    -1  
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R12
U 1 1 5CF7B191
P 4650 3150
F 0 "R12" H 4750 3200 50  0000 L CNN
F 1 "1K" H 4750 3100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4650 3150 50  0001 C CNN
F 3 "" H 4650 3150 50  0001 C CNN
	1    4650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3350 4650 3350
Wire Wire Line
	4650 3250 4650 3350
Connection ~ 4650 3350
Text GLabel 4550 3700 0    60   Input ~ 0
Lo
Text GLabel 4550 3000 0    60   Input ~ 0
Hi
Wire Wire Line
	4550 3000 4650 3000
Wire Wire Line
	4650 3000 4650 3050
Wire Wire Line
	4550 3700 4650 3700
Wire Wire Line
	4650 3700 4650 3650
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
U 1 1 5CF7B1B2
P 9750 3600
F 0 "U6" H 9750 3700 50  0000 C CNN
F 1 "74LS107" H 9750 3500 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9750 3600 50  0001 C CNN
F 3 "" H 9750 3600 50  0001 C CNN
	1    9750 3600
	1    0    0    -1  
$EndComp
Text GLabel 9000 3600 0    60   Input ~ 0
Clk
Wire Wire Line
	9000 3600 9100 3600
$Comp
L ttt_ttl-rescue:SW_Push SW8
U 1 1 5CF7B1BA
P 8800 3350
F 0 "SW8" H 8850 3450 50  0000 L CNN
F 1 "SW_Push" H 8800 3290 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 8800 3550 50  0001 C CNN
F 3 "" H 8800 3550 50  0001 C CNN
	1    8800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 3350 9100 3350
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
L ttt_ttl-rescue:R_Small R22
U 1 1 5CF7B1C8
P 8200 3550
F 0 "R22" H 8300 3600 50  0000 L CNN
F 1 "10K" H 8300 3500 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 8200 3550 50  0001 C CNN
F 3 "" H 8200 3550 50  0001 C CNN
	1    8200 3550
	1    0    0    -1  
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R21
U 1 1 5CF7B1CE
P 8200 3150
F 0 "R21" H 8300 3200 50  0000 L CNN
F 1 "1K" H 8300 3100 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 8200 3150 50  0001 C CNN
F 3 "" H 8200 3150 50  0001 C CNN
	1    8200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3350 8200 3350
Wire Wire Line
	8200 3250 8200 3350
Connection ~ 8200 3350
Text GLabel 8100 3700 0    60   Input ~ 0
Lo
Text GLabel 8100 3000 0    60   Input ~ 0
Hi
Wire Wire Line
	8100 3000 8200 3000
Wire Wire Line
	8200 3000 8200 3050
Wire Wire Line
	8100 3700 8200 3700
Wire Wire Line
	8200 3700 8200 3650
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
U 1 1 5CF7BC4B
P 2500 5500
F 0 "U7" H 2500 5600 50  0000 C CNN
F 1 "74LS107" H 2500 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 2500 5500 50  0001 C CNN
F 3 "" H 2500 5500 50  0001 C CNN
	1    2500 5500
	1    0    0    -1  
$EndComp
Text GLabel 1750 5500 0    60   Input ~ 0
Clk
Wire Wire Line
	1750 5500 1850 5500
$Comp
L ttt_ttl-rescue:SW_Push SW3
U 1 1 5CF7B86F
P 1550 5250
F 0 "SW3" H 1600 5350 50  0000 L CNN
F 1 "SW_Push" H 1550 5190 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 1550 5450 50  0001 C CNN
F 3 "" H 1550 5450 50  0001 C CNN
	1    1550 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5250 1850 5250
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
L ttt_ttl-rescue:R_Small R6
U 1 1 5CF7B87D
P 950 5450
F 0 "R6" H 1050 5500 50  0000 L CNN
F 1 "10K" H 1050 5400 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 950 5450 50  0001 C CNN
F 3 "" H 950 5450 50  0001 C CNN
	1    950  5450
	1    0    0    -1  
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R5
U 1 1 5CF7B883
P 950 5050
F 0 "R5" H 1050 5100 50  0000 L CNN
F 1 "1K" H 1050 5000 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 950 5050 50  0001 C CNN
F 3 "" H 950 5050 50  0001 C CNN
	1    950  5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 5250 950  5250
Wire Wire Line
	950  5150 950  5250
Connection ~ 950  5250
Text GLabel 850  5600 0    60   Input ~ 0
Lo
Text GLabel 850  4900 0    60   Input ~ 0
Hi
Wire Wire Line
	850  4900 950  4900
Wire Wire Line
	950  4900 950  4950
Wire Wire Line
	850  5600 950  5600
Wire Wire Line
	950  5600 950  5550
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
U 1 1 5CF7B8A4
P 6200 5500
F 0 "U8" H 6200 5600 50  0000 C CNN
F 1 "74LS107" H 6200 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 6200 5500 50  0001 C CNN
F 3 "" H 6200 5500 50  0001 C CNN
	1    6200 5500
	1    0    0    -1  
$EndComp
Text GLabel 5450 5500 0    60   Input ~ 0
Clk
Wire Wire Line
	5450 5500 5550 5500
$Comp
L ttt_ttl-rescue:SW_Push SW6
U 1 1 5CF7B8AC
P 5250 5250
F 0 "SW6" H 5300 5350 50  0000 L CNN
F 1 "SW_Push" H 5250 5190 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 5250 5450 50  0001 C CNN
F 3 "" H 5250 5450 50  0001 C CNN
	1    5250 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5250 5550 5250
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
L ttt_ttl-rescue:R_Small R15
U 1 1 5CF7B8BA
P 4650 5450
F 0 "R15" H 4750 5500 50  0000 L CNN
F 1 "10K" H 4750 5400 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4650 5450 50  0001 C CNN
F 3 "" H 4650 5450 50  0001 C CNN
	1    4650 5450
	1    0    0    -1  
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R14
U 1 1 5CF7B8C0
P 4650 5050
F 0 "R14" H 4750 5100 50  0000 L CNN
F 1 "1K" H 4750 5000 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 4650 5050 50  0001 C CNN
F 3 "" H 4650 5050 50  0001 C CNN
	1    4650 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 5250 4650 5250
Wire Wire Line
	4650 5150 4650 5250
Connection ~ 4650 5250
Text GLabel 4550 5600 0    60   Input ~ 0
Lo
Text GLabel 4550 4900 0    60   Input ~ 0
Hi
Wire Wire Line
	4550 4900 4650 4900
Wire Wire Line
	4650 4900 4650 4950
Wire Wire Line
	4550 5600 4650 5600
Wire Wire Line
	4650 5600 4650 5550
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
U 1 1 5CF7B8E1
P 9750 5500
F 0 "U9" H 9750 5600 50  0000 C CNN
F 1 "74LS107" H 9750 5400 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 9750 5500 50  0001 C CNN
F 3 "" H 9750 5500 50  0001 C CNN
	1    9750 5500
	1    0    0    -1  
$EndComp
Text GLabel 9000 5500 0    60   Input ~ 0
Clk
Wire Wire Line
	9000 5500 9100 5500
$Comp
L ttt_ttl-rescue:SW_Push SW9
U 1 1 5CF7B8E9
P 8800 5250
F 0 "SW9" H 8850 5350 50  0000 L CNN
F 1 "SW_Push" H 8800 5190 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H8mm" H 8800 5450 50  0001 C CNN
F 3 "" H 8800 5450 50  0001 C CNN
	1    8800 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 5250 9100 5250
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
L ttt_ttl-rescue:R_Small R24
U 1 1 5CF7B8F7
P 8200 5450
F 0 "R24" H 8300 5500 50  0000 L CNN
F 1 "10K" H 8300 5400 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 8200 5450 50  0001 C CNN
F 3 "" H 8200 5450 50  0001 C CNN
	1    8200 5450
	1    0    0    -1  
$EndComp
$Comp
L ttt_ttl-rescue:R_Small R23
U 1 1 5CF7B8FD
P 8200 5050
F 0 "R23" H 8300 5100 50  0000 L CNN
F 1 "1K" H 8300 5000 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" H 8200 5050 50  0001 C CNN
F 3 "" H 8200 5050 50  0001 C CNN
	1    8200 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5250 8200 5250
Wire Wire Line
	8200 5150 8200 5250
Connection ~ 8200 5250
Text GLabel 8100 5600 0    60   Input ~ 0
Lo
Text GLabel 8100 4900 0    60   Input ~ 0
Hi
Wire Wire Line
	8100 4900 8200 4900
Wire Wire Line
	8200 4900 8200 4950
Wire Wire Line
	8100 5600 8200 5600
Wire Wire Line
	8200 5600 8200 5550
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
Wire Wire Line
	900  1300 900  1400
Wire Wire Line
	3150 1300 3450 1300
Wire Wire Line
	4600 1300 4600 1400
Wire Wire Line
	6850 1300 7150 1300
Wire Wire Line
	8150 1300 8150 1400
Wire Wire Line
	10400 1300 10700 1300
Wire Wire Line
	950  3350 950  3450
Wire Wire Line
	3200 3350 3500 3350
Wire Wire Line
	4650 3350 4650 3450
Wire Wire Line
	6900 3350 7200 3350
Wire Wire Line
	8200 3350 8200 3450
Wire Wire Line
	10450 3350 10750 3350
Wire Wire Line
	950  5250 950  5350
Wire Wire Line
	3200 5250 3500 5250
Wire Wire Line
	4650 5250 4650 5350
Wire Wire Line
	6900 5250 7200 5250
Wire Wire Line
	8200 5250 8200 5350
Wire Wire Line
	10450 5250 10750 5250
$EndSCHEMATC
