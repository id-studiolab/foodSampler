EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
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
L foodSampler_v22-rescue:USB_C_Receptacle-Connector-foodSampler_v20-rescue J00
U 1 1 603FAA32
P 1400 2350
F 0 "J00" H 1505 3617 50  0000 C CNN
F 1 "USB_C_Receptacle" H 1505 3526 50  0000 C CNN
F 2 "_connectors:632723130112" H 1550 2350 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1550 2350 50  0001 C CNN
	1    1400 2350
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0104
U 1 1 6059C77E
P 6700 2200
F 0 "#PWR0104" H 6700 1950 50  0001 C CNN
F 1 "GND" H 6850 2150 50  0000 C CNN
F 2 "" H 6700 2200 50  0001 C CNN
F 3 "" H 6700 2200 50  0001 C CNN
	1    6700 2200
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0108
U 1 1 6059F556
P 1100 3950
F 0 "#PWR0108" H 1100 3700 50  0001 C CNN
F 1 "GND" H 1105 3777 50  0000 C CNN
F 2 "" H 1100 3950 50  0001 C CNN
F 3 "" H 1100 3950 50  0001 C CNN
	1    1100 3950
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0109
U 1 1 6059F69C
P 1400 3950
F 0 "#PWR0109" H 1400 3700 50  0001 C CNN
F 1 "GND" H 1405 3777 50  0000 C CNN
F 2 "" H 1400 3950 50  0001 C CNN
F 3 "" H 1400 3950 50  0001 C CNN
	1    1400 3950
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:D_Schottky_x2_ACom_KKA-Device-foodSampler_v20-rescue D10
U 1 1 605C0D8C
P 2850 6850
F 0 "D10" H 2850 7066 50  0000 C CNN
F 1 "SM05.TCT" H 2850 6975 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2850 6850 50  0001 C CNN
F 3 "~" H 2850 6850 50  0001 C CNN
	1    2850 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 6850 2550 6450
Wire Wire Line
	3150 6850 3150 6550
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0116
U 1 1 605C4BAD
P 2850 7050
F 0 "#PWR0116" H 2850 6800 50  0001 C CNN
F 1 "GND" H 2855 6877 50  0000 C CNN
F 2 "" H 2850 7050 50  0001 C CNN
F 3 "" H 2850 7050 50  0001 C CNN
	1    2850 7050
	1    0    0    -1  
$EndComp
Text Notes 2600 7500 0    50   ~ 0
F#:1456392
Wire Wire Line
	4800 6150 4750 6150
$Comp
L foodSampler_v22-rescue:Conn_01x02-Connector_Generic-foodSampler_v20-rescue J20
U 1 1 606A7283
P 13700 7400
F 0 "J20" H 13780 7392 50  0000 L CNN
F 1 "BATT1" H 13780 7301 50  0000 L CNN
F 2 "_connectors:JST_B2B-PH-K-S_SUNK" H 13700 7400 50  0001 C CNN
F 3 "~" H 13700 7400 50  0001 C CNN
	1    13700 7400
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0126
U 1 1 606E2886
P 5500 7700
F 0 "#PWR0126" H 5500 7450 50  0001 C CNN
F 1 "GND" H 5505 7527 50  0000 C CNN
F 2 "" H 5500 7700 50  0001 C CNN
F 3 "" H 5500 7700 50  0001 C CNN
	1    5500 7700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 7650 5400 7700
Wire Wire Line
	5400 7700 5500 7700
Wire Wire Line
	5500 7700 5600 7700
Wire Wire Line
	5600 7700 5600 7650
Connection ~ 5500 7700
Wire Wire Line
	2300 6550 3150 6550
Wire Wire Line
	2400 6450 2550 6450
Text GLabel 6300 6150 2    50   Input ~ 0
FT_TXD
Text GLabel 6300 6250 2    50   Input ~ 0
FT_RXD
Wire Wire Line
	6200 6250 6300 6250
Wire Wire Line
	6200 6150 6300 6150
Text GLabel 12100 3850 2    50   Input ~ 0
FT_TXD
Text GLabel 12100 3750 2    50   Input ~ 0
FT_RXD
Wire Wire Line
	12000 3750 12100 3750
Wire Wire Line
	12000 3850 12100 3850
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0127
U 1 1 6071F7AF
P 10650 5400
F 0 "#PWR0127" H 10650 5150 50  0001 C CNN
F 1 "GND" H 10600 5250 50  0000 C CNN
F 2 "" H 10650 5400 50  0001 C CNN
F 3 "" H 10650 5400 50  0001 C CNN
	1    10650 5400
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0128
U 1 1 6071FD0F
P 11550 5400
F 0 "#PWR0128" H 11550 5150 50  0001 C CNN
F 1 "GND" H 11600 5250 50  0000 C CNN
F 2 "" H 11550 5400 50  0001 C CNN
F 3 "" H 11550 5400 50  0001 C CNN
	1    11550 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11550 5350 11550 5400
Wire Wire Line
	10650 5350 10650 5400
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0129
U 1 1 6072A913
P 10100 5050
F 0 "#PWR0129" H 10100 4800 50  0001 C CNN
F 1 "GND" H 10100 4900 50  0000 C CNN
F 2 "" H 10100 5050 50  0001 C CNN
F 3 "" H 10100 5050 50  0001 C CNN
	1    10100 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5050 10100 5000
Wire Wire Line
	10100 5000 10150 5000
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0130
U 1 1 60730699
P 12050 5000
F 0 "#PWR0130" H 12050 4750 50  0001 C CNN
F 1 "GND" H 12050 4850 50  0000 C CNN
F 2 "" H 12050 5000 50  0001 C CNN
F 3 "" H 12050 5000 50  0001 C CNN
	1    12050 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	12000 4950 12050 4950
Wire Wire Line
	12050 4950 12050 5000
Wire Wire Line
	12000 4850 12050 4850
Wire Wire Line
	12050 4850 12050 4950
Connection ~ 12050 4950
$Comp
L foodSampler_v22-rescue:+3V3-power-foodSampler_v20-rescue #PWR0131
U 1 1 6073D146
P 10100 3400
F 0 "#PWR0131" H 10100 3250 50  0001 C CNN
F 1 "+3V3" H 10115 3573 50  0000 C CNN
F 2 "" H 10100 3400 50  0001 C CNN
F 3 "" H 10100 3400 50  0001 C CNN
	1    10100 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 3700 10100 3700
Wire Wire Line
	10100 3700 10100 3450
Text GLabel 9700 3800 0    50   Input ~ 0
EN
Wire Wire Line
	9700 3800 9850 3800
Text GLabel 12100 4750 2    50   Input ~ 0
IO0
Wire Wire Line
	12100 4750 12000 4750
$Comp
L foodSampler_v22-rescue:MMBT3904-Transistor_BJT-foodSampler_v20-rescue Q10
U 1 1 607522CF
P 7650 6200
F 0 "Q10" H 7650 6650 50  0000 L CNN
F 1 "MMBT3904" H 7550 6550 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7850 6125 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7650 6200 50  0001 L CNN
	1    7650 6200
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:MMBT3904-Transistor_BJT-foodSampler_v20-rescue Q11
U 1 1 60753207
P 7650 6700
F 0 "Q11" H 7650 7050 50  0000 L CNN
F 1 "MMBT3904" H 7550 7150 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7850 6625 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N3904.pdf" H 7650 6700 50  0001 L CNN
	1    7650 6700
	1    0    0    1   
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R10
U 1 1 60759E1E
P 7300 6200
F 0 "R10" V 7500 6300 50  0000 R CNN
F 1 "10K" V 7400 6300 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7300 6200 50  0001 C CNN
F 3 "~" H 7300 6200 50  0001 C CNN
	1    7300 6200
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R11
U 1 1 6075A9E4
P 7300 6700
F 0 "R11" V 7200 6800 50  0000 R CNN
F 1 "10K" V 7100 6800 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7300 6700 50  0001 C CNN
F 3 "~" H 7300 6700 50  0001 C CNN
	1    7300 6700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7400 6200 7450 6200
Wire Wire Line
	7400 6700 7450 6700
Text GLabel 8650 6950 2    50   Input ~ 0
EN
Wire Wire Line
	7750 6900 7750 6950
Wire Wire Line
	7750 6950 8200 6950
Text GLabel 8650 5950 2    50   Input ~ 0
IO0
Wire Wire Line
	7750 6000 7750 5950
Wire Wire Line
	7750 5950 8200 5950
Wire Wire Line
	6200 6350 6900 6350
Wire Wire Line
	6900 6550 6900 6700
Wire Wire Line
	6900 6700 7200 6700
Wire Wire Line
	6900 6200 6900 6350
Wire Wire Line
	6900 6200 7200 6200
$Comp
L foodSampler_v22-rescue:SWITCH_PB_NO-_switch-foodSampler_v20-rescue SW10
U 1 1 607C1FEF
P 8450 6150
F 0 "SW10" V 8503 6109 60  0000 R CNN
F 1 "NO" V 8397 6109 60  0000 R CNN
F 2 "_switch:SW_SPST_4x3" H 8450 6150 60  0001 C CNN
F 3 "" H 8450 6150 60  0001 C CNN
	1    8450 6150
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C10
U 1 1 607C4EAF
P 8200 6150
F 0 "C10" H 8150 6550 50  0000 L CNN
F 1 "100nF" H 8100 6450 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8200 6150 50  0001 C CNN
F 3 "~" H 8200 6150 50  0001 C CNN
	1    8200 6150
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C11
U 1 1 607C6FA1
P 8200 7150
F 0 "C11" H 8150 6950 50  0000 L CNN
F 1 "10uF" H 8100 6850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8200 7150 50  0001 C CNN
F 3 "~" H 8200 7150 50  0001 C CNN
	1    8200 7150
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:SWITCH_PB_NO-_switch-foodSampler_v20-rescue SW11
U 1 1 607C757D
P 8450 7150
F 0 "SW11" V 8503 7109 60  0000 R CNN
F 1 "NO" V 8397 7109 60  0000 R CNN
F 2 "_switch:SW_SPST_4x3" H 8450 7150 60  0001 C CNN
F 3 "" H 8450 7150 60  0001 C CNN
	1    8450 7150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8200 5950 8200 6050
Connection ~ 8200 5950
Wire Wire Line
	8200 5950 8450 5950
Wire Wire Line
	8450 5950 8450 6050
Connection ~ 8450 5950
Wire Wire Line
	8450 5950 8650 5950
Wire Wire Line
	8200 6250 8200 6300
Wire Wire Line
	8200 6300 8450 6300
Wire Wire Line
	8450 6300 8450 6250
Wire Wire Line
	8200 7250 8200 7300
Wire Wire Line
	8200 7300 8450 7300
Wire Wire Line
	8450 7300 8450 7250
Wire Wire Line
	8450 7050 8450 6950
Connection ~ 8450 6950
Wire Wire Line
	8450 6950 8650 6950
Wire Wire Line
	8200 7050 8200 6950
Connection ~ 8200 6950
Wire Wire Line
	8200 6950 8450 6950
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0132
U 1 1 607FB135
P 8450 6350
F 0 "#PWR0132" H 8450 6100 50  0001 C CNN
F 1 "GND" H 8455 6177 50  0000 C CNN
F 2 "" H 8450 6350 50  0001 C CNN
F 3 "" H 8450 6350 50  0001 C CNN
	1    8450 6350
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0133
U 1 1 607FB54A
P 8450 7350
F 0 "#PWR0133" H 8450 7100 50  0001 C CNN
F 1 "GND" H 8455 7177 50  0000 C CNN
F 2 "" H 8450 7350 50  0001 C CNN
F 3 "" H 8450 7350 50  0001 C CNN
	1    8450 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 7300 8450 7350
Connection ~ 8450 7300
Wire Wire Line
	8450 6300 8450 6350
Connection ~ 8450 6300
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C12
U 1 1 6080E975
P 4600 5950
F 0 "C12" H 4300 6000 50  0000 L CNN
F 1 "100nF" H 4250 5900 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4600 5950 50  0001 C CNN
F 3 "~" H 4600 5950 50  0001 C CNN
	1    4600 5950
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0135
U 1 1 60810165
P 4600 6050
F 0 "#PWR0135" H 4600 5800 50  0001 C CNN
F 1 "GND" H 4605 5877 50  0000 C CNN
F 2 "" H 4600 6050 50  0001 C CNN
F 3 "" H 4600 6050 50  0001 C CNN
	1    4600 6050
	1    0    0    -1  
$EndComp
Text Notes 8600 7350 0    50   ~ 0
RESET
Text Notes 8600 6350 0    50   ~ 0
BOOT\n
Text Notes 9650 5900 0    50   ~ 0
! Don’t use GPIO 5, 12 & 15 if possible.\nThese are part of boot sequence.
Wire Wire Line
	6200 6550 6900 6550
Wire Wire Line
	7050 6500 7750 6500
Wire Wire Line
	7050 6500 6900 6350
Connection ~ 6900 6350
Wire Wire Line
	7050 6400 7750 6400
Connection ~ 6900 6550
Wire Wire Line
	6900 6550 7050 6400
$Comp
L foodSampler_v22-rescue:MountingHole-Mechanical-foodSampler_v20-rescue H00
U 1 1 6066E628
P 15050 3050
F 0 "H00" H 15150 3096 50  0000 L CNN
F 1 "MountingHole" H 15150 3005 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 15050 3050 50  0001 C CNN
F 3 "~" H 15050 3050 50  0001 C CNN
	1    15050 3050
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:MountingHole-Mechanical-foodSampler_v20-rescue H01
U 1 1 6066ED29
P 15050 3250
F 0 "H01" H 15150 3296 50  0000 L CNN
F 1 "MountingHole" H 15150 3205 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 15050 3250 50  0001 C CNN
F 3 "~" H 15050 3250 50  0001 C CNN
	1    15050 3250
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:MountingHole-Mechanical-foodSampler_v20-rescue H02
U 1 1 6066EF21
P 15050 3450
F 0 "H02" H 15150 3496 50  0000 L CNN
F 1 "MountingHole" H 15150 3405 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 15050 3450 50  0001 C CNN
F 3 "~" H 15050 3450 50  0001 C CNN
	1    15050 3450
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:MountingHole-Mechanical-foodSampler_v20-rescue H03
U 1 1 6066F0CA
P 15050 3650
F 0 "H03" H 15150 3696 50  0000 L CNN
F 1 "MountingHole" H 15150 3605 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 15050 3650 50  0001 C CNN
F 3 "~" H 15050 3650 50  0001 C CNN
	1    15050 3650
	1    0    0    -1  
$EndComp
Text GLabel 10050 4400 0    50   Input ~ 0
SW3
Text GLabel 10050 4500 0    50   Input ~ 0
SW4
Text GLabel 10050 4600 0    50   Input ~ 0
SW5
Text GLabel 10050 4700 0    50   Input ~ 0
SW6
Wire Wire Line
	10150 4300 10050 4300
Wire Wire Line
	10050 4400 10150 4400
Wire Wire Line
	10150 4500 10050 4500
Wire Wire Line
	10050 4600 10150 4600
Wire Wire Line
	10150 4700 10050 4700
Text GLabel 10750 5400 3    50   Input ~ 0
LED0
Text GLabel 12100 4650 2    50   Input ~ 0
LED1
Text GLabel 12100 4550 2    50   Input ~ 0
LED2
Text GLabel 12100 4450 2    50   Input ~ 0
LED3
Text GLabel 12100 4350 2    50   Input ~ 0
LED4
Text GLabel 12100 4250 2    50   Input ~ 0
LED5
Text GLabel 12100 4150 2    50   Input ~ 0
LED6
Wire Wire Line
	10750 5350 10750 5400
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0162
U 1 1 606DDE8C
P 11350 10500
F 0 "#PWR0162" H 11350 10250 50  0001 C CNN
F 1 "GND" H 11355 10327 50  0000 C CNN
F 2 "" H 11350 10500 50  0001 C CNN
F 3 "" H 11350 10500 50  0001 C CNN
	1    11350 10500
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:TP-_special-foodSampler_v20-rescue TP03
U 1 1 606DF82F
P 11350 10400
F 0 "TP03" V 11550 10500 50  0000 R CNN
F 1 "GND" V 11450 10500 50  0000 R CNN
F 2 "_connectors:TEST_PAD_HOLE_1mm" H 11350 10400 50  0001 C CNN
F 3 "" H 11350 10400 50  0001 C CNN
	1    11350 10400
	0    -1   -1   0   
$EndComp
$Comp
L Battery_Management:BQ24075RGT U00
U 1 1 609F391E
P 5650 2050
F 0 "U00" H 5950 2600 50  0000 C CNN
F 1 "BQ24075RGT" H 5950 1500 50  0000 C CNN
F 2 "Package_DFN_QFN:VQFN-16-1EP_3x3mm_P0.5mm_EP1.6x1.6mm" H 5950 1500 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/bq24075.pdf" H 5950 2250 50  0001 C CNN
	1    5650 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 2150 6300 2150
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0101
U 1 1 60A2C3B5
P 5050 2750
F 0 "#PWR0101" H 5050 2500 50  0001 C CNN
F 1 "GND" H 5055 2577 50  0000 C CNN
F 2 "" H 5050 2750 50  0001 C CNN
F 3 "" H 5050 2750 50  0001 C CNN
	1    5050 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2700 5050 2750
Wire Wire Line
	5050 2500 5050 2450
Wire Wire Line
	5050 2450 5150 2450
Text Notes 5000 3200 0    50   ~ 0
CHG CURRENT\n590R -> 1.5A
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0102
U 1 1 60AADDF8
P 5650 2750
F 0 "#PWR0102" H 5650 2500 50  0001 C CNN
F 1 "GND" H 5655 2577 50  0000 C CNN
F 2 "" H 5650 2750 50  0001 C CNN
F 3 "" H 5650 2750 50  0001 C CNN
	1    5650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2650 5650 2750
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R00
U 1 1 60AC8BC0
P 4700 2600
F 0 "R00" H 4500 2650 50  0000 L CNN
F 1 "1K1" H 4500 2550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4700 2600 50  0001 C CNN
F 3 "~" H 4700 2600 50  0001 C CNN
	1    4700 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 2350 4700 2350
Wire Wire Line
	4700 2350 4700 2500
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0103
U 1 1 60AE3E34
P 4700 2750
F 0 "#PWR0103" H 4700 2500 50  0001 C CNN
F 1 "GND" H 4705 2577 50  0000 C CNN
F 2 "" H 4700 2750 50  0001 C CNN
F 3 "" H 4700 2750 50  0001 C CNN
	1    4700 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2700 4700 2750
Text Notes 4250 3200 0    50   ~ 0
SYSTEM LIM\n1K1 -> 1.5A
$Comp
L foodSampler_v22-rescue:Thermistor_NTC-Device-foodSampler_v20-rescue TH00
U 1 1 605E8780
P 6450 2150
F 0 "TH00" V 6500 2450 50  0000 R CNN
F 1 "10K" V 6500 2000 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P2.54mm_Vertical" H 6450 2200 50  0001 C CNN
F 3 "~" H 6450 2200 50  0001 C CNN
	1    6450 2150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6600 2150 6700 2150
Wire Wire Line
	6700 2150 6700 2200
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R02
U 1 1 60BF8449
P 7900 2150
F 0 "R02" H 7800 1800 50  0000 L CNN
F 1 "1K" H 7800 1700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7900 2150 50  0001 C CNN
F 3 "~" H 7900 2150 50  0001 C CNN
	1    7900 2150
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R03
U 1 1 60BF97A5
P 8100 2150
F 0 "R03" H 8000 1800 50  0000 L CNN
F 1 "1K" H 8000 1700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8100 2150 50  0001 C CNN
F 3 "~" H 8100 2150 50  0001 C CNN
	1    8100 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0105
U 1 1 60CA4DE0
P 6350 1900
F 0 "#PWR0105" H 6350 1750 50  0001 C CNN
F 1 "+BATT" H 6365 2073 50  0000 C CNN
F 2 "" H 6350 1900 50  0001 C CNN
F 3 "" H 6350 1900 50  0001 C CNN
	1    6350 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1950 6350 1950
Wire Wire Line
	6350 1950 6350 1900
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C02
U 1 1 60CC3838
P 9200 1850
F 0 "C02" H 9292 1896 50  0000 L CNN
F 1 "10uF" H 9292 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9200 1850 50  0001 C CNN
F 3 "~" H 9200 1850 50  0001 C CNN
	1    9200 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1650 9200 1750
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0106
U 1 1 60CE4087
P 9200 2000
F 0 "#PWR0106" H 9200 1750 50  0001 C CNN
F 1 "GND" H 9205 1827 50  0000 C CNN
F 2 "" H 9200 2000 50  0001 C CNN
F 3 "" H 9200 2000 50  0001 C CNN
	1    9200 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1950 9200 2000
Wire Wire Line
	2000 1350 3650 1350
Wire Wire Line
	5650 1350 5650 1450
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C00
U 1 1 60D99580
P 3650 1500
F 0 "C00" H 3742 1546 50  0000 L CNN
F 1 "10uF" H 3742 1455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 3650 1500 50  0001 C CNN
F 3 "~" H 3650 1500 50  0001 C CNN
	1    3650 1500
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0107
U 1 1 60D9A2D9
P 3650 1650
F 0 "#PWR0107" H 3650 1400 50  0001 C CNN
F 1 "GND" H 3500 1550 50  0000 C CNN
F 2 "" H 3650 1650 50  0001 C CNN
F 3 "" H 3650 1650 50  0001 C CNN
	1    3650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 1350 3650 1400
Wire Wire Line
	3650 1350 5650 1350
Wire Wire Line
	3650 1600 3650 1650
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C01
U 1 1 60DBDE42
P 7150 2050
F 0 "C01" H 7100 2350 50  0000 L CNN
F 1 "10uF" H 7100 2250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 7150 2050 50  0001 C CNN
F 3 "~" H 7150 2050 50  0001 C CNN
	1    7150 2050
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0114
U 1 1 60DF2D47
P 7150 2150
F 0 "#PWR0114" H 7150 1900 50  0001 C CNN
F 1 "GND" H 7150 2000 50  0000 C CNN
F 2 "" H 7150 2150 50  0001 C CNN
F 3 "" H 7150 2150 50  0001 C CNN
	1    7150 2150
	1    0    0    -1  
$EndComp
Connection ~ 6350 1950
Text GLabel 9550 1500 2    50   Input ~ 0
VOUT
Connection ~ 9200 1650
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R04
U 1 1 60E980D0
P 3550 3150
F 0 "R04" H 3350 3200 50  0000 L CNN
F 1 "10K" H 3350 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3550 3150 50  0001 C CNN
F 3 "~" H 3550 3150 50  0001 C CNN
	1    3550 3150
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R05
U 1 1 60E98802
P 3750 3150
F 0 "R05" H 3800 3200 50  0000 L CNN
F 1 "10K" H 3800 3100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3750 3150 50  0001 C CNN
F 3 "~" H 3750 3150 50  0001 C CNN
	1    3750 3150
	1    0    0    -1  
$EndComp
Text GLabel 3500 3350 0    50   Input ~ 0
EN1
Text GLabel 3800 3350 2    50   Input ~ 0
EN2
Text GLabel 3500 2950 0    50   Input ~ 0
VOUT
Wire Wire Line
	3500 2950 3550 2950
Wire Wire Line
	3750 2950 3750 3050
Wire Wire Line
	3550 3050 3550 2950
Connection ~ 3550 2950
Wire Wire Line
	3550 2950 3750 2950
Wire Wire Line
	3550 3250 3550 3350
Wire Wire Line
	3750 3250 3750 3350
Wire Wire Line
	3750 3350 3800 3350
Wire Wire Line
	3550 3350 3500 3350
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0115
U 1 1 60F21D3C
P 3650 4050
F 0 "#PWR0115" H 3650 3800 50  0001 C CNN
F 1 "GND" H 3655 3877 50  0000 C CNN
F 2 "" H 3650 4050 50  0001 C CNN
F 3 "" H 3650 4050 50  0001 C CNN
	1    3650 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3650 3550 3750
Wire Wire Line
	3550 3750 3650 3750
Wire Wire Line
	3750 3750 3750 3650
Wire Wire Line
	3650 4050 3650 3750
Connection ~ 3650 3750
Wire Wire Line
	3650 3750 3750 3750
Text GLabel 5050 2050 0    50   Input ~ 0
EN1
Text GLabel 5050 2150 0    50   Input ~ 0
EN2
Wire Wire Line
	5050 2150 5150 2150
Wire Wire Line
	5150 2050 5050 2050
Text Notes 4100 4200 0    50   ~ 0
EN1 \n 0\n 1\n 0\n 1\n
Text Notes 4350 4200 0    50   ~ 0
EN2\n 0\n 0\n 1\n 1\n
Text Notes 4600 4200 0    50   ~ 0
CURRENT\n 100mA\n 500mA\n  ISET\nSTANDBY\n
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0118
U 1 1 60F89C50
P 4700 1900
F 0 "#PWR0118" H 4700 1650 50  0001 C CNN
F 1 "GND" H 4705 1727 50  0000 C CNN
F 2 "" H 4700 1900 50  0001 C CNN
F 3 "" H 4700 1900 50  0001 C CNN
	1    4700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 1850 4700 1850
Wire Wire Line
	4700 1850 4700 1900
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R01
U 1 1 60A2B667
P 5050 2600
F 0 "R01" H 4850 2650 50  0000 L CNN
F 1 "590R" H 4800 2550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5050 2600 50  0001 C CNN
F 3 "~" H 5050 2600 50  0001 C CNN
	1    5050 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+BATT #PWR0123
U 1 1 615876AE
P 4400 1600
F 0 "#PWR0123" H 4400 1450 50  0001 C CNN
F 1 "+BATT" H 4415 1773 50  0000 C CNN
F 2 "" H 4400 1600 50  0001 C CNN
F 3 "" H 4400 1600 50  0001 C CNN
	1    4400 1600
	1    0    0    -1  
$EndComp
$Comp
L _switch:SWITCH_SPDT SW00
U 1 1 615EE71E
P 4700 1650
F 0 "SW00" H 4700 1900 50  0000 C CNN
F 1 "SWITCH_SPDT" H 4550 1800 50  0000 C CNN
F 2 "_switch:DT-SC12P-BQR" H 4700 1650 60  0001 C CNN
F 3 "" H 4700 1650 60  0001 C CNN
	1    4700 1650
	-1   0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0124
U 1 1 6160829B
P 4400 1700
F 0 "#PWR0124" H 4400 1450 50  0001 C CNN
F 1 "GND" H 4405 1527 50  0000 C CNN
F 2 "" H 4400 1700 50  0001 C CNN
F 3 "" H 4400 1700 50  0001 C CNN
	1    4400 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1600 4550 1600
Wire Wire Line
	4550 1700 4400 1700
Wire Wire Line
	4850 1650 5150 1650
Wire Wire Line
	2000 1850 2400 1850
Wire Wire Line
	2400 1850 2400 1950
Wire Wire Line
	2300 6550 2300 2150
Wire Wire Line
	2300 2050 2000 2050
Wire Wire Line
	2000 2150 2300 2150
Connection ~ 2300 2150
Wire Wire Line
	2300 2150 2300 2050
Wire Wire Line
	2000 1950 2400 1950
Connection ~ 2400 1950
Wire Wire Line
	2400 1950 2400 6450
$Comp
L Regulator_Linear:MIC5219-3.3YM5 U30
U 1 1 616C0E68
P 10550 1750
F 0 "U30" H 10550 2092 50  0000 C CNN
F 1 "MIC5219-3.3YM5" H 10550 2001 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 10550 2075 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/MIC5219-500mA-Peak-Output-LDO-Regulator-DS20006021A.pdf" H 10550 1750 50  0001 C CNN
	1    10550 1750
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C30
U 1 1 616C55FF
P 10900 1850
F 0 "C30" H 10992 1896 50  0000 L CNN
F 1 "22pF" H 10992 1805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10900 1850 50  0001 C CNN
F 3 "~" H 10900 1850 50  0001 C CNN
	1    10900 1850
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:+3V3-power-foodSampler_v20-rescue #PWR0157
U 1 1 616C6802
P 11300 1600
F 0 "#PWR0157" H 11300 1450 50  0001 C CNN
F 1 "+3V3" H 11315 1773 50  0000 C CNN
F 2 "" H 11300 1600 50  0001 C CNN
F 3 "" H 11300 1600 50  0001 C CNN
	1    11300 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C31
U 1 1 616C8955
P 11300 1850
F 0 "C31" H 11392 1896 50  0000 L CNN
F 1 "10uF" H 11400 1800 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-10_Kemet-I" H 11300 1850 50  0001 C CNN
F 3 "~" H 11300 1850 50  0001 C CNN
	1    11300 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 1650 10250 1650
Wire Wire Line
	10250 1750 10000 1750
Wire Wire Line
	10000 1750 10000 1650
Connection ~ 10000 1650
Wire Wire Line
	10850 1650 11300 1650
Wire Wire Line
	11300 1650 11300 1600
Wire Wire Line
	11300 1650 11300 1750
Connection ~ 11300 1650
Wire Wire Line
	10850 1750 10900 1750
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0158
U 1 1 61756756
P 10550 2050
F 0 "#PWR0158" H 10550 1800 50  0001 C CNN
F 1 "GND" H 10555 1877 50  0000 C CNN
F 2 "" H 10550 2050 50  0001 C CNN
F 3 "" H 10550 2050 50  0001 C CNN
	1    10550 2050
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0159
U 1 1 61756CFF
P 10900 2050
F 0 "#PWR0159" H 10900 1800 50  0001 C CNN
F 1 "GND" H 10905 1877 50  0000 C CNN
F 2 "" H 10900 2050 50  0001 C CNN
F 3 "" H 10900 2050 50  0001 C CNN
	1    10900 2050
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0160
U 1 1 61756F4D
P 11300 2050
F 0 "#PWR0160" H 11300 1800 50  0001 C CNN
F 1 "GND" H 11305 1877 50  0000 C CNN
F 2 "" H 11300 2050 50  0001 C CNN
F 3 "" H 11300 2050 50  0001 C CNN
	1    11300 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	11300 1950 11300 2050
Wire Wire Line
	10900 1950 10900 2050
Text Notes 4250 1750 2    50   ~ 0
OFF\n\n\nON
$Comp
L Jumper:SolderJumper_2_Open JP01
U 1 1 60A62BF5
P 3750 3500
F 0 "JP01" V 3750 3600 50  0000 L CNN
F 1 "SolderJumper_2_Open" V 3850 3600 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3750 3500 50  0001 C CNN
F 3 "~" H 3750 3500 50  0001 C CNN
	1    3750 3500
	0    1    1    0   
$EndComp
Connection ~ 3750 3350
$Comp
L Jumper:SolderJumper_2_Open JP00
U 1 1 60A8D027
P 3550 3500
F 0 "JP00" V 3550 3250 50  0000 L CNN
F 1 "SolderJumper_2_Open" V 3650 2600 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3550 3500 50  0001 C CNN
F 3 "~" H 3550 3500 50  0001 C CNN
	1    3550 3500
	0    1    1    0   
$EndComp
Connection ~ 3550 3350
$Comp
L foodSampler_v22-rescue:TP-_special-foodSampler_v20-rescue TP00
U 1 1 60BFF166
P 9950 10550
F 0 "TP00" V 10050 10650 50  0000 R CNN
F 1 "VBUS" V 10150 10650 50  0000 R CNN
F 2 "_connectors:TEST_PAD_HOLE_1mm" H 9950 10550 50  0001 C CNN
F 3 "" H 9950 10550 50  0001 C CNN
	1    9950 10550
	0    1    1    0   
$EndComp
$Comp
L foodSampler_v22-rescue:TP-_special-foodSampler_v20-rescue TP01
U 1 1 60C00ACD
P 10650 10550
F 0 "TP01" V 10750 10650 50  0000 R CNN
F 1 "VOUT" V 10850 10650 50  0000 R CNN
F 2 "_connectors:TEST_PAD_HOLE_1mm" H 10650 10550 50  0001 C CNN
F 3 "" H 10650 10550 50  0001 C CNN
	1    10650 10550
	0    1    1    0   
$EndComp
$Comp
L foodSampler_v22-rescue:TP-_special-foodSampler_v20-rescue TP20
U 1 1 60C2B02F
P 10300 10550
F 0 "TP20" V 10400 10650 50  0000 R CNN
F 1 "VBAT" V 10500 10650 50  0000 R CNN
F 2 "_connectors:TEST_PAD_HOLE_1mm" H 10300 10550 50  0001 C CNN
F 3 "" H 10300 10550 50  0001 C CNN
	1    10300 10550
	0    1    1    0   
$EndComp
$Comp
L foodSampler_v22-rescue:TP-_special-foodSampler_v20-rescue TP30
U 1 1 60C401B0
P 11000 10550
F 0 "TP30" V 11100 10650 50  0000 R CNN
F 1 "3V3" V 11200 10600 50  0000 R CNN
F 2 "_connectors:TEST_PAD_HOLE_1mm" H 11000 10550 50  0001 C CNN
F 3 "" H 11000 10550 50  0001 C CNN
	1    11000 10550
	0    1    1    0   
$EndComp
$Comp
L Device:LED_RAGB D00
U 1 1 60C9E220
P 8100 1850
F 0 "D00" V 8146 1520 50  0000 R CNN
F 1 "LED_RAGB" V 8055 1520 50  0000 R CNN
F 2 "_led:SMD_RGB_SIDE-APFA3010LSEEZGKQBKC" H 8100 1800 50  0001 C CNN
F 3 "~" H 8100 1800 50  0001 C CNN
	1    8100 1850
	0    -1   -1   0   
$EndComp
Connection ~ 8100 1650
Wire Wire Line
	8100 1650 9200 1650
Wire Wire Line
	8100 2250 8100 2350
Wire Wire Line
	7900 2250 7900 2450
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R06
U 1 1 60D59852
P 8300 2150
F 0 "R06" H 8200 1800 50  0000 L CNN
F 1 "1K" H 8200 1700 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8300 2150 50  0001 C CNN
F 3 "~" H 8300 2150 50  0001 C CNN
	1    8300 2150
	1    0    0    -1  
$EndComp
Text GLabel 10050 4800 0    50   Input ~ 0
LED
Text GLabel 8350 2350 2    50   Input ~ 0
LED
Wire Wire Line
	8300 2250 8300 2350
Wire Wire Line
	8300 2350 8350 2350
Wire Wire Line
	10050 4200 10150 4200
Wire Wire Line
	10050 4100 10150 4100
Text GLabel 10050 4100 0    50   Input ~ 0
SW0
Text GLabel 10050 4200 0    50   Input ~ 0
SW1
Text GLabel 10050 4300 0    50   Input ~ 0
SW2
Text GLabel 10650 10450 1    50   Input ~ 0
VOUT
Text GLabel 5700 1350 2    50   Input ~ 0
VBUS
Wire Wire Line
	5700 1350 5650 1350
Connection ~ 5650 1350
$Comp
L power:+BATT #PWR0165
U 1 1 60EC0EDA
P 10300 10450
F 0 "#PWR0165" H 10300 10300 50  0001 C CNN
F 1 "+BATT" H 10315 10623 50  0000 C CNN
F 2 "" H 10300 10450 50  0001 C CNN
F 3 "" H 10300 10450 50  0001 C CNN
	1    10300 10450
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:+3V3-power-foodSampler_v20-rescue #PWR0166
U 1 1 60EC1662
P 11000 10450
F 0 "#PWR0166" H 11000 10300 50  0001 C CNN
F 1 "+3V3" H 11015 10623 50  0000 C CNN
F 2 "" H 11000 10450 50  0001 C CNN
F 3 "" H 11000 10450 50  0001 C CNN
	1    11000 10450
	1    0    0    -1  
$EndComp
Text GLabel 9950 10450 1    50   Input ~ 0
VBUS
Connection ~ 3650 1350
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R07
U 1 1 60D3C4CC
P 2950 1900
F 0 "R07" H 2750 1950 50  0000 L CNN
F 1 "5K1" H 2750 1850 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2950 1900 50  0001 C CNN
F 3 "~" H 2950 1900 50  0001 C CNN
	1    2950 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1650 2950 1650
Wire Wire Line
	2950 1650 2950 1800
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R08
U 1 1 60D528A7
P 3050 1900
F 0 "R08" H 2850 1850 50  0000 L CNN
F 1 "5K1" H 2850 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3050 1900 50  0001 C CNN
F 3 "~" H 3050 1900 50  0001 C CNN
	1    3050 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 1550 3050 1550
Wire Wire Line
	3050 1550 3050 1800
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0167
U 1 1 60D6901F
P 3000 2050
F 0 "#PWR0167" H 3000 1800 50  0001 C CNN
F 1 "GND" H 3000 1900 50  0000 C CNN
F 2 "" H 3000 2050 50  0001 C CNN
F 3 "" H 3000 2050 50  0001 C CNN
	1    3000 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 2000 2950 2050
Wire Wire Line
	2950 2050 3000 2050
Wire Wire Line
	3050 2000 3050 2050
Wire Wire Line
	3050 2050 3000 2050
Connection ~ 3000 2050
Wire Wire Line
	9200 1650 9500 1650
Wire Wire Line
	9550 1500 9500 1500
Wire Wire Line
	9500 1500 9500 1650
Connection ~ 9500 1650
Wire Wire Line
	9500 1650 10000 1650
Wire Wire Line
	4800 6450 2550 6450
Connection ~ 2550 6450
Wire Wire Line
	3150 6550 4800 6550
Connection ~ 3150 6550
Wire Wire Line
	6150 1650 8100 1650
Wire Wire Line
	6150 2350 8100 2350
Wire Wire Line
	6150 2450 7900 2450
Wire Wire Line
	6350 1950 7150 1950
Wire Wire Line
	10050 4800 10150 4800
Wire Wire Line
	12100 4150 12000 4150
Wire Wire Line
	12000 4250 12100 4250
Wire Wire Line
	12100 4350 12000 4350
Wire Wire Line
	12000 4450 12100 4450
Wire Wire Line
	12100 4550 12000 4550
$Comp
L foodSampler_v22-rescue:ESP32-WROOM-_ESP32-footprints-Shem-Lib-foodSampler_v20-rescue U40
U 1 1 603FA8EF
P 11100 4300
F 0 "U40" H 11075 5689 60  0000 C CNN
F 1 "ESP32-WROOM" H 11075 5583 60  0000 C CNN
F 2 "RF_Module:ESP32-WROOM-32" H 11450 5650 60  0001 C CNN
F 3 "" H 10650 4750 60  0001 C CNN
	1    11100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12100 4650 12000 4650
Wire Wire Line
	12000 3650 12700 3650
Wire Wire Line
	12000 3950 12800 3950
Text GLabel 13100 3950 2    50   Input ~ 0
SDA
Text GLabel 13100 3650 2    50   Input ~ 0
SCL
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R40
U 1 1 60C3DED2
P 12700 3500
F 0 "R40" H 12500 3550 50  0000 L CNN
F 1 "4K7" H 12500 3450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 12700 3500 50  0001 C CNN
F 3 "~" H 12700 3500 50  0001 C CNN
	1    12700 3500
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R41
U 1 1 60C3F127
P 12800 3500
F 0 "R41" H 12600 3450 50  0000 L CNN
F 1 "4K7" H 12600 3550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 12800 3500 50  0001 C CNN
F 3 "~" H 12800 3500 50  0001 C CNN
	1    12800 3500
	-1   0    0    1   
$EndComp
$Comp
L foodSampler_v22-rescue:+3V3-power-foodSampler_v20-rescue #PWR0110
U 1 1 60C834CA
P 12750 3400
F 0 "#PWR0110" H 12750 3250 50  0001 C CNN
F 1 "+3V3" H 12765 3573 50  0000 C CNN
F 2 "" H 12750 3400 50  0001 C CNN
F 3 "" H 12750 3400 50  0001 C CNN
	1    12750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	12700 3400 12750 3400
Wire Wire Line
	12750 3400 12800 3400
Connection ~ 12750 3400
Wire Wire Line
	12700 3600 12700 3650
Connection ~ 12700 3650
Wire Wire Line
	12700 3650 13100 3650
Wire Wire Line
	12800 3600 12800 3950
Connection ~ 12800 3950
Wire Wire Line
	12800 3950 13100 3950
$Comp
L _battery_management:BQ27441-G1 U20
U 1 1 60CCB6B3
P 12050 7400
F 0 "U20" H 12050 7965 50  0000 C CNN
F 1 "BQ27441-G1" H 12050 7874 50  0000 C CNN
F 2 "Package_SON:Texas_S-PDSO-N12" H 12100 7350 50  0001 C CNN
F 3 "" H 12100 7350 50  0001 C CNN
	1    12050 7400
	1    0    0    -1  
$EndComp
Text GLabel 11600 7100 0    50   Input ~ 0
SDA
Text GLabel 11600 7200 0    50   Input ~ 0
SCL
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R20
U 1 1 60CCD315
P 11500 7600
F 0 "R20" V 11700 7700 50  0000 R CNN
F 1 "10K" V 11600 7700 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 11500 7600 50  0001 C CNN
F 3 "~" H 11500 7600 50  0001 C CNN
	1    11500 7600
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R21
U 1 1 60CCDD5A
P 11500 7700
F 0 "R21" V 11600 7750 50  0000 R CNN
F 1 "10K" V 11700 7750 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 11500 7700 50  0001 C CNN
F 3 "~" H 11500 7700 50  0001 C CNN
	1    11500 7700
	0    1    1    0   
$EndComp
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C20
U 1 1 60CCE6FA
P 12600 7600
F 0 "C20" H 12700 7500 50  0000 L CNN
F 1 "0.47uF" H 12700 7400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 12600 7600 50  0001 C CNN
F 3 "~" H 12600 7600 50  0001 C CNN
	1    12600 7600
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C21
U 1 1 60CCF7BA
P 13100 7600
F 0 "C21" H 13200 7650 50  0000 L CNN
F 1 "1uF" H 13200 7550 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 13100 7600 50  0001 C CNN
F 3 "~" H 13100 7600 50  0001 C CNN
	1    13100 7600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R22
U 1 1 60CD125D
P 12600 7200
F 0 "R22" H 12659 7246 50  0000 L CNN
F 1 "0.01R" H 12659 7155 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric" H 12600 7200 50  0001 C CNN
F 3 "~" H 12600 7200 50  0001 C CNN
	1    12600 7200
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0111
U 1 1 60CD2D10
P 12700 7550
F 0 "#PWR0111" H 12700 7400 50  0001 C CNN
F 1 "+1V8" H 12850 7600 50  0000 C CNN
F 2 "" H 12700 7550 50  0001 C CNN
F 3 "" H 12700 7550 50  0001 C CNN
	1    12700 7550
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0112
U 1 1 60CD32E7
P 11200 7750
F 0 "#PWR0112" H 11200 7500 50  0001 C CNN
F 1 "GND" H 11200 7600 50  0000 C CNN
F 2 "" H 11200 7750 50  0001 C CNN
F 3 "" H 11200 7750 50  0001 C CNN
	1    11200 7750
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0113
U 1 1 60D0B4A8
P 11200 7550
F 0 "#PWR0113" H 11200 7400 50  0001 C CNN
F 1 "+1V8" H 11200 7700 50  0000 C CNN
F 2 "" H 11200 7550 50  0001 C CNN
F 3 "" H 11200 7550 50  0001 C CNN
	1    11200 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	11400 7600 11200 7600
Wire Wire Line
	11200 7600 11200 7550
Wire Wire Line
	11200 7750 11200 7700
Wire Wire Line
	11200 7700 11400 7700
Wire Wire Line
	11600 7700 11650 7700
Wire Wire Line
	11650 7600 11600 7600
Wire Wire Line
	11600 7200 11650 7200
Wire Wire Line
	11650 7100 11600 7100
Wire Wire Line
	12450 7100 12600 7100
Wire Wire Line
	12450 7300 12600 7300
Wire Wire Line
	12450 7400 12600 7400
Wire Wire Line
	12450 7500 12600 7500
Wire Wire Line
	12600 7500 12650 7500
Wire Wire Line
	12650 7500 12650 7550
Wire Wire Line
	12650 7550 12700 7550
Connection ~ 12600 7500
Wire Wire Line
	12450 7700 12600 7700
Wire Wire Line
	13100 7500 13100 7400
Connection ~ 13100 7400
Wire Wire Line
	13100 7400 13500 7400
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0119
U 1 1 60DFD3D4
P 12600 7750
F 0 "#PWR0119" H 12600 7500 50  0001 C CNN
F 1 "GND" H 12600 7600 50  0000 C CNN
F 2 "" H 12600 7750 50  0001 C CNN
F 3 "" H 12600 7750 50  0001 C CNN
	1    12600 7750
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0120
U 1 1 60DFD7B6
P 13100 7750
F 0 "#PWR0120" H 13100 7500 50  0001 C CNN
F 1 "GND" H 13100 7600 50  0000 C CNN
F 2 "" H 13100 7750 50  0001 C CNN
F 3 "" H 13100 7750 50  0001 C CNN
	1    13100 7750
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0121
U 1 1 60E36526
P 13500 7750
F 0 "#PWR0121" H 13500 7500 50  0001 C CNN
F 1 "GND" H 13500 7600 50  0000 C CNN
F 2 "" H 13500 7750 50  0001 C CNN
F 3 "" H 13500 7750 50  0001 C CNN
	1    13500 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	13500 7500 13500 7750
Wire Wire Line
	13100 7700 13100 7750
Wire Wire Line
	12600 7700 12600 7750
Connection ~ 12600 7700
Wire Wire Line
	12600 7300 12600 7400
Connection ~ 12600 7300
Connection ~ 12600 7400
Wire Wire Line
	12600 7400 13100 7400
$Comp
L power:+BATT #PWR0122
U 1 1 60E863E1
P 12600 7050
F 0 "#PWR0122" H 12600 6900 50  0001 C CNN
F 1 "+BATT" H 12615 7223 50  0000 C CNN
F 2 "" H 12600 7050 50  0001 C CNN
F 3 "" H 12600 7050 50  0001 C CNN
	1    12600 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	12600 7050 12600 7100
Connection ~ 12600 7100
Text Notes 4600 13600 0    50   ~ 0
Some GPIO’s cannot be used freely, as they are already assigned to module peripherals or have special functions during booting:\n\nGPIO0 pin is used as a bootstrapping pin, and should be  low to enter UART download mode. Make sure it is not pulled  low by a peripheral device during boot or the firmware will not start!\n\nGPIO2 pin is used as a bootstrapping pin, and should be low to  enter UART download mode. Make sure it is not pulled high by  a peripheral device during boot or you will not be able to flash  a firmware to the module!\n\nGPIO06 through GPIO11 are reserved for the FLASH. You cannot  use them at all!\n\nGPIO12 is used as a bootstrapping pin to select output voltage  of an internal regulator which powers the flash chip (VDD_SDIO).  This pin has an internal pulldown so if left unconnected it will read  low at reset (selecting default 3.3V operation). Make sure it is not  pulled high by a peripheral device during boot or the module might  not be able to start!\n\nGPIO15 can be used to stop debug output on Serial during boot.  If pulled low there will be no output on the Serial port during the  boot process. This can be helpful in battery powered applications  where you do not want to use the Serial port at all to reduce  power consumption.\n\nGPIO34-39 can only be set as input mode and do not have  software pullup or pulldown functions\n\nGPIO37 and 38 are not available on most modules\n\nESP32-PICO-D4:\nGPIO16 and 17 are used for internal Flash (Readers input)\n\nESP32 WROVER:\nGPIO16 and 17 are used for the PSRAM
$Comp
L Jumper:SolderJumper_2_Open JP40
U 1 1 60E9D0B5
P 11450 5750
F 0 "JP40" V 11450 5850 50  0000 L CNN
F 1 "SolderJumper_2_Open" V 11550 5850 50  0000 L CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 11450 5750 50  0001 C CNN
F 3 "~" H 11450 5750 50  0001 C CNN
	1    11450 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	11450 5350 11450 5600
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0134
U 1 1 60EB37D3
P 11450 5900
F 0 "#PWR0134" H 11450 5650 50  0001 C CNN
F 1 "GND" H 11500 5750 50  0000 C CNN
F 2 "" H 11450 5900 50  0001 C CNN
F 3 "" H 11450 5900 50  0001 C CNN
	1    11450 5900
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R42
U 1 1 60EC72AB
P 9850 3650
F 0 "R42" H 9900 3700 50  0000 L CNN
F 1 "10K" H 9900 3600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 9850 3650 50  0001 C CNN
F 3 "~" H 9850 3650 50  0001 C CNN
	1    9850 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 3550 9850 3450
Wire Wire Line
	9850 3450 10100 3450
Connection ~ 10100 3450
Wire Wire Line
	10100 3450 10100 3400
Wire Wire Line
	9850 3750 9850 3800
Connection ~ 9850 3800
Wire Wire Line
	9850 3800 10150 3800
Text Notes 11300 6200 0    50   ~ 0
Close to disable serial on boot
Text GLabel 950  9100 0    50   Input ~ 0
LED0
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RL40
U 1 1 60F087A3
P 1150 9100
F 0 "RL40" V 1350 9200 50  0000 R CNN
F 1 "1K" V 1250 9150 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1150 9100 50  0001 C CNN
F 3 "~" H 1150 9100 50  0001 C CNN
	1    1150 9100
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0136
U 1 1 60F09096
P 1700 9150
F 0 "#PWR0136" H 1700 8900 50  0001 C CNN
F 1 "GND" H 1705 8977 50  0000 C CNN
F 2 "" H 1700 9150 50  0001 C CNN
F 3 "" H 1700 9150 50  0001 C CNN
	1    1700 9150
	1    0    0    -1  
$EndComp
Text GLabel 2450 8900 2    50   Input ~ 0
SW0
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RD40
U 1 1 60F098F0
P 2150 8900
F 0 "RD40" V 2350 9000 50  0000 R CNN
F 1 "1K" V 2250 8950 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2150 8900 50  0001 C CNN
F 3 "~" H 2150 8900 50  0001 C CNN
	1    2150 8900
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C40
U 1 1 60F09FA8
P 2350 9050
F 0 "C40" H 2450 9050 50  0000 L CNN
F 1 "10nF" H 2450 8950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2350 9050 50  0001 C CNN
F 3 "~" H 2350 9050 50  0001 C CNN
	1    2350 9050
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RS40
U 1 1 60F203E6
P 1950 9050
F 0 "RS40" H 2200 9050 50  0000 R CNN
F 1 "1K" H 2100 8950 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1950 9050 50  0001 C CNN
F 3 "~" H 1950 9050 50  0001 C CNN
	1    1950 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 8900 1950 8900
Wire Wire Line
	1950 8900 1950 8950
Connection ~ 1950 8900
Wire Wire Line
	1950 8900 1700 8900
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0137
U 1 1 60F4B4D7
P 1950 9150
F 0 "#PWR0137" H 1950 8900 50  0001 C CNN
F 1 "GND" H 1955 8977 50  0000 C CNN
F 2 "" H 1950 9150 50  0001 C CNN
F 3 "" H 1950 9150 50  0001 C CNN
	1    1950 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 8900 2350 8900
Wire Wire Line
	2350 8950 2350 8900
Connection ~ 2350 8900
Wire Wire Line
	2350 8900 2450 8900
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0138
U 1 1 60F7717F
P 2350 9150
F 0 "#PWR0138" H 2350 8900 50  0001 C CNN
F 1 "GND" H 2355 8977 50  0000 C CNN
F 2 "" H 2350 9150 50  0001 C CNN
F 3 "" H 2350 9150 50  0001 C CNN
	1    2350 9150
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:SWITCH_SPST_LED-_switch-foodSampler_v20-rescue SW40
U 1 1 60F067CF
P 1550 8900
F 0 "SW40" H 1550 9300 50  0000 L CNN
F 1 "SWITCH_LED" H 1550 9200 50  0000 L CNN
F 2 "_switch:MICRO_SW_LED" H 1550 9000 50  0001 C CNN
F 3 "" H 1550 9000 50  0001 C CNN
	1    1550 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 9100 1700 9150
Wire Wire Line
	1250 9100 1400 9100
Wire Wire Line
	950  9100 1050 9100
$Comp
L foodSampler_v22-rescue:+3V3-power-foodSampler_v20-rescue #PWR0139
U 1 1 60FE8463
P 1350 8700
F 0 "#PWR0139" H 1350 8550 50  0001 C CNN
F 1 "+3V3" H 1350 8850 50  0000 C CNN
F 2 "" H 1350 8700 50  0001 C CNN
F 3 "" H 1350 8700 50  0001 C CNN
	1    1350 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 8700 1400 8700
Text GLabel 3200 9100 0    50   Input ~ 0
LED1
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RL41
U 1 1 610B99FC
P 3400 9100
F 0 "RL41" V 3600 9200 50  0000 R CNN
F 1 "1K" V 3500 9150 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3400 9100 50  0001 C CNN
F 3 "~" H 3400 9100 50  0001 C CNN
	1    3400 9100
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0140
U 1 1 610B9A06
P 3950 9150
F 0 "#PWR0140" H 3950 8900 50  0001 C CNN
F 1 "GND" H 3955 8977 50  0000 C CNN
F 2 "" H 3950 9150 50  0001 C CNN
F 3 "" H 3950 9150 50  0001 C CNN
	1    3950 9150
	1    0    0    -1  
$EndComp
Text GLabel 4700 8900 2    50   Input ~ 0
SW1
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RD41
U 1 1 610B9A11
P 4400 8900
F 0 "RD41" V 4600 9000 50  0000 R CNN
F 1 "1K" V 4500 8950 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4400 8900 50  0001 C CNN
F 3 "~" H 4400 8900 50  0001 C CNN
	1    4400 8900
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C41
U 1 1 610B9A1B
P 4600 9050
F 0 "C41" H 4700 9050 50  0000 L CNN
F 1 "10nF" H 4700 8950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4600 9050 50  0001 C CNN
F 3 "~" H 4600 9050 50  0001 C CNN
	1    4600 9050
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RS41
U 1 1 610B9A25
P 4200 9050
F 0 "RS41" H 4450 9050 50  0000 R CNN
F 1 "1K" H 4350 8950 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4200 9050 50  0001 C CNN
F 3 "~" H 4200 9050 50  0001 C CNN
	1    4200 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 8900 4200 8900
Wire Wire Line
	4200 8900 4200 8950
Connection ~ 4200 8900
Wire Wire Line
	4200 8900 3950 8900
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0141
U 1 1 610B9A33
P 4200 9150
F 0 "#PWR0141" H 4200 8900 50  0001 C CNN
F 1 "GND" H 4205 8977 50  0000 C CNN
F 2 "" H 4200 9150 50  0001 C CNN
F 3 "" H 4200 9150 50  0001 C CNN
	1    4200 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 8900 4600 8900
Wire Wire Line
	4600 8950 4600 8900
Connection ~ 4600 8900
Wire Wire Line
	4600 8900 4700 8900
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0142
U 1 1 610B9A41
P 4600 9150
F 0 "#PWR0142" H 4600 8900 50  0001 C CNN
F 1 "GND" H 4605 8977 50  0000 C CNN
F 2 "" H 4600 9150 50  0001 C CNN
F 3 "" H 4600 9150 50  0001 C CNN
	1    4600 9150
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:SWITCH_SPST_LED-_switch-foodSampler_v20-rescue SW41
U 1 1 610B9A4B
P 3800 8900
F 0 "SW41" H 3800 9300 50  0000 L CNN
F 1 "SWITCH_LED" H 3800 9200 50  0000 L CNN
F 2 "_switch:MICRO_SW_LED" H 3800 9000 50  0001 C CNN
F 3 "" H 3800 9000 50  0001 C CNN
	1    3800 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 9100 3950 9150
Wire Wire Line
	3500 9100 3650 9100
Wire Wire Line
	3200 9100 3300 9100
$Comp
L foodSampler_v22-rescue:+3V3-power-foodSampler_v20-rescue #PWR0143
U 1 1 610B9A58
P 3600 8700
F 0 "#PWR0143" H 3600 8550 50  0001 C CNN
F 1 "+3V3" H 3600 8850 50  0000 C CNN
F 2 "" H 3600 8700 50  0001 C CNN
F 3 "" H 3600 8700 50  0001 C CNN
	1    3600 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 8700 3650 8700
Text GLabel 5400 9100 0    50   Input ~ 0
LED2
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RL42
U 1 1 610CEECE
P 5600 9100
F 0 "RL42" V 5800 9200 50  0000 R CNN
F 1 "1K" V 5700 9150 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5600 9100 50  0001 C CNN
F 3 "~" H 5600 9100 50  0001 C CNN
	1    5600 9100
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0144
U 1 1 610CEED8
P 6150 9150
F 0 "#PWR0144" H 6150 8900 50  0001 C CNN
F 1 "GND" H 6155 8977 50  0000 C CNN
F 2 "" H 6150 9150 50  0001 C CNN
F 3 "" H 6150 9150 50  0001 C CNN
	1    6150 9150
	1    0    0    -1  
$EndComp
Text GLabel 6900 8900 2    50   Input ~ 0
SW2
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RD42
U 1 1 610CEEE3
P 6600 8900
F 0 "RD42" V 6800 9000 50  0000 R CNN
F 1 "1K" V 6700 8950 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6600 8900 50  0001 C CNN
F 3 "~" H 6600 8900 50  0001 C CNN
	1    6600 8900
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C42
U 1 1 610CEEED
P 6800 9050
F 0 "C42" H 6900 9050 50  0000 L CNN
F 1 "10nF" H 6900 8950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6800 9050 50  0001 C CNN
F 3 "~" H 6800 9050 50  0001 C CNN
	1    6800 9050
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RS42
U 1 1 610CEEF7
P 6400 9050
F 0 "RS42" H 6650 9050 50  0000 R CNN
F 1 "1K" H 6550 8950 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6400 9050 50  0001 C CNN
F 3 "~" H 6400 9050 50  0001 C CNN
	1    6400 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 8900 6400 8900
Wire Wire Line
	6400 8900 6400 8950
Connection ~ 6400 8900
Wire Wire Line
	6400 8900 6150 8900
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0145
U 1 1 610CEF05
P 6400 9150
F 0 "#PWR0145" H 6400 8900 50  0001 C CNN
F 1 "GND" H 6405 8977 50  0000 C CNN
F 2 "" H 6400 9150 50  0001 C CNN
F 3 "" H 6400 9150 50  0001 C CNN
	1    6400 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 8900 6800 8900
Wire Wire Line
	6800 8950 6800 8900
Connection ~ 6800 8900
Wire Wire Line
	6800 8900 6900 8900
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0146
U 1 1 610CEF13
P 6800 9150
F 0 "#PWR0146" H 6800 8900 50  0001 C CNN
F 1 "GND" H 6805 8977 50  0000 C CNN
F 2 "" H 6800 9150 50  0001 C CNN
F 3 "" H 6800 9150 50  0001 C CNN
	1    6800 9150
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:SWITCH_SPST_LED-_switch-foodSampler_v20-rescue SW42
U 1 1 610CEF1D
P 6000 8900
F 0 "SW42" H 6000 9300 50  0000 L CNN
F 1 "SWITCH_LED" H 6000 9200 50  0000 L CNN
F 2 "_switch:MICRO_SW_LED" H 6000 9000 50  0001 C CNN
F 3 "" H 6000 9000 50  0001 C CNN
	1    6000 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 9100 6150 9150
Wire Wire Line
	5700 9100 5850 9100
Wire Wire Line
	5400 9100 5500 9100
$Comp
L foodSampler_v22-rescue:+3V3-power-foodSampler_v20-rescue #PWR0147
U 1 1 610CEF2A
P 5800 8700
F 0 "#PWR0147" H 5800 8550 50  0001 C CNN
F 1 "+3V3" H 5800 8850 50  0000 C CNN
F 2 "" H 5800 8700 50  0001 C CNN
F 3 "" H 5800 8700 50  0001 C CNN
	1    5800 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 8700 5850 8700
Text GLabel 7650 9100 0    50   Input ~ 0
LED3
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RL43
U 1 1 610CEF36
P 7850 9100
F 0 "RL43" V 8050 9200 50  0000 R CNN
F 1 "1K" V 7950 9150 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7850 9100 50  0001 C CNN
F 3 "~" H 7850 9100 50  0001 C CNN
	1    7850 9100
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0148
U 1 1 610CEF40
P 8400 9150
F 0 "#PWR0148" H 8400 8900 50  0001 C CNN
F 1 "GND" H 8405 8977 50  0000 C CNN
F 2 "" H 8400 9150 50  0001 C CNN
F 3 "" H 8400 9150 50  0001 C CNN
	1    8400 9150
	1    0    0    -1  
$EndComp
Text GLabel 9150 8900 2    50   Input ~ 0
SW3
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RD43
U 1 1 610CEF4B
P 8850 8900
F 0 "RD43" V 9050 9000 50  0000 R CNN
F 1 "1K" V 8950 8950 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8850 8900 50  0001 C CNN
F 3 "~" H 8850 8900 50  0001 C CNN
	1    8850 8900
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C43
U 1 1 610CEF55
P 9050 9050
F 0 "C43" H 9150 9050 50  0000 L CNN
F 1 "10nF" H 9150 8950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9050 9050 50  0001 C CNN
F 3 "~" H 9050 9050 50  0001 C CNN
	1    9050 9050
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RS43
U 1 1 610CEF5F
P 8650 9050
F 0 "RS43" H 8900 9050 50  0000 R CNN
F 1 "1K" H 8800 8950 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8650 9050 50  0001 C CNN
F 3 "~" H 8650 9050 50  0001 C CNN
	1    8650 9050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 8900 8650 8900
Wire Wire Line
	8650 8900 8650 8950
Connection ~ 8650 8900
Wire Wire Line
	8650 8900 8400 8900
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0149
U 1 1 610CEF6D
P 8650 9150
F 0 "#PWR0149" H 8650 8900 50  0001 C CNN
F 1 "GND" H 8655 8977 50  0000 C CNN
F 2 "" H 8650 9150 50  0001 C CNN
F 3 "" H 8650 9150 50  0001 C CNN
	1    8650 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 8900 9050 8900
Wire Wire Line
	9050 8950 9050 8900
Connection ~ 9050 8900
Wire Wire Line
	9050 8900 9150 8900
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0150
U 1 1 610CEF7B
P 9050 9150
F 0 "#PWR0150" H 9050 8900 50  0001 C CNN
F 1 "GND" H 9055 8977 50  0000 C CNN
F 2 "" H 9050 9150 50  0001 C CNN
F 3 "" H 9050 9150 50  0001 C CNN
	1    9050 9150
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:SWITCH_SPST_LED-_switch-foodSampler_v20-rescue SW43
U 1 1 610CEF85
P 8250 8900
F 0 "SW43" H 8250 9300 50  0000 L CNN
F 1 "SWITCH_LED" H 8250 9200 50  0000 L CNN
F 2 "_switch:MICRO_SW_LED" H 8250 9000 50  0001 C CNN
F 3 "" H 8250 9000 50  0001 C CNN
	1    8250 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 9100 8400 9150
Wire Wire Line
	7950 9100 8100 9100
Wire Wire Line
	7650 9100 7750 9100
$Comp
L foodSampler_v22-rescue:+3V3-power-foodSampler_v20-rescue #PWR0151
U 1 1 610CEF92
P 8050 8700
F 0 "#PWR0151" H 8050 8550 50  0001 C CNN
F 1 "+3V3" H 8050 8850 50  0000 C CNN
F 2 "" H 8050 8700 50  0001 C CNN
F 3 "" H 8050 8700 50  0001 C CNN
	1    8050 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 8700 8100 8700
Text GLabel 950  10300 0    50   Input ~ 0
LED4
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RL44
U 1 1 610EC4F5
P 1150 10300
F 0 "RL44" V 1350 10400 50  0000 R CNN
F 1 "1K" V 1250 10350 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1150 10300 50  0001 C CNN
F 3 "~" H 1150 10300 50  0001 C CNN
	1    1150 10300
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0152
U 1 1 610EC4FF
P 1700 10350
F 0 "#PWR0152" H 1700 10100 50  0001 C CNN
F 1 "GND" H 1705 10177 50  0000 C CNN
F 2 "" H 1700 10350 50  0001 C CNN
F 3 "" H 1700 10350 50  0001 C CNN
	1    1700 10350
	1    0    0    -1  
$EndComp
Text GLabel 2450 10100 2    50   Input ~ 0
SW4
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RD44
U 1 1 610EC50A
P 2150 10100
F 0 "RD44" V 2350 10200 50  0000 R CNN
F 1 "1K" V 2250 10150 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2150 10100 50  0001 C CNN
F 3 "~" H 2150 10100 50  0001 C CNN
	1    2150 10100
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C44
U 1 1 610EC514
P 2350 10250
F 0 "C44" H 2450 10250 50  0000 L CNN
F 1 "10nF" H 2450 10150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2350 10250 50  0001 C CNN
F 3 "~" H 2350 10250 50  0001 C CNN
	1    2350 10250
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RS44
U 1 1 610EC51E
P 1950 10250
F 0 "RS44" H 2200 10250 50  0000 R CNN
F 1 "1K" H 2100 10150 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1950 10250 50  0001 C CNN
F 3 "~" H 1950 10250 50  0001 C CNN
	1    1950 10250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 10100 1950 10100
Wire Wire Line
	1950 10100 1950 10150
Connection ~ 1950 10100
Wire Wire Line
	1950 10100 1700 10100
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0153
U 1 1 610EC52C
P 1950 10350
F 0 "#PWR0153" H 1950 10100 50  0001 C CNN
F 1 "GND" H 1955 10177 50  0000 C CNN
F 2 "" H 1950 10350 50  0001 C CNN
F 3 "" H 1950 10350 50  0001 C CNN
	1    1950 10350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 10100 2350 10100
Wire Wire Line
	2350 10150 2350 10100
Connection ~ 2350 10100
Wire Wire Line
	2350 10100 2450 10100
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0154
U 1 1 610EC53A
P 2350 10350
F 0 "#PWR0154" H 2350 10100 50  0001 C CNN
F 1 "GND" H 2355 10177 50  0000 C CNN
F 2 "" H 2350 10350 50  0001 C CNN
F 3 "" H 2350 10350 50  0001 C CNN
	1    2350 10350
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:SWITCH_SPST_LED-_switch-foodSampler_v20-rescue SW44
U 1 1 610EC544
P 1550 10100
F 0 "SW44" H 1550 10500 50  0000 L CNN
F 1 "SWITCH_LED" H 1550 10400 50  0000 L CNN
F 2 "_switch:MICRO_SW_LED" H 1550 10200 50  0001 C CNN
F 3 "" H 1550 10200 50  0001 C CNN
	1    1550 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 10300 1700 10350
Wire Wire Line
	1250 10300 1400 10300
Wire Wire Line
	950  10300 1050 10300
$Comp
L foodSampler_v22-rescue:+3V3-power-foodSampler_v20-rescue #PWR0155
U 1 1 610EC551
P 1350 9900
F 0 "#PWR0155" H 1350 9750 50  0001 C CNN
F 1 "+3V3" H 1350 10050 50  0000 C CNN
F 2 "" H 1350 9900 50  0001 C CNN
F 3 "" H 1350 9900 50  0001 C CNN
	1    1350 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 9900 1400 9900
Text GLabel 3200 10300 0    50   Input ~ 0
LED5
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0156
U 1 1 610EC567
P 3950 10350
F 0 "#PWR0156" H 3950 10100 50  0001 C CNN
F 1 "GND" H 3955 10177 50  0000 C CNN
F 2 "" H 3950 10350 50  0001 C CNN
F 3 "" H 3950 10350 50  0001 C CNN
	1    3950 10350
	1    0    0    -1  
$EndComp
Text GLabel 4700 10100 2    50   Input ~ 0
SW5
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RD45
U 1 1 610EC572
P 4400 10100
F 0 "RD45" V 4600 10200 50  0000 R CNN
F 1 "1K" V 4500 10150 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4400 10100 50  0001 C CNN
F 3 "~" H 4400 10100 50  0001 C CNN
	1    4400 10100
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C45
U 1 1 610EC57C
P 4600 10250
F 0 "C45" H 4700 10250 50  0000 L CNN
F 1 "10nF" H 4700 10150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4600 10250 50  0001 C CNN
F 3 "~" H 4600 10250 50  0001 C CNN
	1    4600 10250
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RS45
U 1 1 610EC586
P 4200 10250
F 0 "RS45" H 4450 10250 50  0000 R CNN
F 1 "1K" H 4350 10150 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4200 10250 50  0001 C CNN
F 3 "~" H 4200 10250 50  0001 C CNN
	1    4200 10250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 10100 4200 10100
Wire Wire Line
	4200 10100 4200 10150
Connection ~ 4200 10100
Wire Wire Line
	4200 10100 3950 10100
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0161
U 1 1 610EC594
P 4200 10350
F 0 "#PWR0161" H 4200 10100 50  0001 C CNN
F 1 "GND" H 4205 10177 50  0000 C CNN
F 2 "" H 4200 10350 50  0001 C CNN
F 3 "" H 4200 10350 50  0001 C CNN
	1    4200 10350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 10100 4600 10100
Wire Wire Line
	4600 10150 4600 10100
Connection ~ 4600 10100
Wire Wire Line
	4600 10100 4700 10100
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0163
U 1 1 610EC5A2
P 4600 10350
F 0 "#PWR0163" H 4600 10100 50  0001 C CNN
F 1 "GND" H 4605 10177 50  0000 C CNN
F 2 "" H 4600 10350 50  0001 C CNN
F 3 "" H 4600 10350 50  0001 C CNN
	1    4600 10350
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:SWITCH_SPST_LED-_switch-foodSampler_v20-rescue SW45
U 1 1 610EC5AC
P 3800 10100
F 0 "SW45" H 3800 10500 50  0000 L CNN
F 1 "SWITCH_LED" H 3800 10400 50  0000 L CNN
F 2 "_switch:MICRO_SW_LED" H 3800 10200 50  0001 C CNN
F 3 "" H 3800 10200 50  0001 C CNN
	1    3800 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 10300 3950 10350
Wire Wire Line
	3500 10300 3650 10300
Wire Wire Line
	3200 10300 3300 10300
$Comp
L foodSampler_v22-rescue:+3V3-power-foodSampler_v20-rescue #PWR0164
U 1 1 610EC5B9
P 3600 9900
F 0 "#PWR0164" H 3600 9750 50  0001 C CNN
F 1 "+3V3" H 3600 10050 50  0000 C CNN
F 2 "" H 3600 9900 50  0001 C CNN
F 3 "" H 3600 9900 50  0001 C CNN
	1    3600 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 9900 3650 9900
Text GLabel 5400 10300 0    50   Input ~ 0
LED6
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RL46
U 1 1 610EC5C5
P 5600 10300
F 0 "RL46" V 5800 10400 50  0000 R CNN
F 1 "1K" V 5700 10350 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 5600 10300 50  0001 C CNN
F 3 "~" H 5600 10300 50  0001 C CNN
	1    5600 10300
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0168
U 1 1 610EC5CF
P 6150 10350
F 0 "#PWR0168" H 6150 10100 50  0001 C CNN
F 1 "GND" H 6155 10177 50  0000 C CNN
F 2 "" H 6150 10350 50  0001 C CNN
F 3 "" H 6150 10350 50  0001 C CNN
	1    6150 10350
	1    0    0    -1  
$EndComp
Text GLabel 6900 10100 2    50   Input ~ 0
SW6
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RD46
U 1 1 610EC5DA
P 6600 10100
F 0 "RD46" V 6800 10200 50  0000 R CNN
F 1 "1K" V 6700 10150 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6600 10100 50  0001 C CNN
F 3 "~" H 6600 10100 50  0001 C CNN
	1    6600 10100
	0    -1   -1   0   
$EndComp
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C46
U 1 1 610EC5E4
P 6800 10250
F 0 "C46" H 6900 10250 50  0000 L CNN
F 1 "10nF" H 6900 10150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6800 10250 50  0001 C CNN
F 3 "~" H 6800 10250 50  0001 C CNN
	1    6800 10250
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RS46
U 1 1 610EC5EE
P 6400 10250
F 0 "RS46" H 6650 10250 50  0000 R CNN
F 1 "1K" H 6550 10150 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6400 10250 50  0001 C CNN
F 3 "~" H 6400 10250 50  0001 C CNN
	1    6400 10250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 10100 6400 10100
Wire Wire Line
	6400 10100 6400 10150
Connection ~ 6400 10100
Wire Wire Line
	6400 10100 6150 10100
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0169
U 1 1 610EC5FC
P 6400 10350
F 0 "#PWR0169" H 6400 10100 50  0001 C CNN
F 1 "GND" H 6405 10177 50  0000 C CNN
F 2 "" H 6400 10350 50  0001 C CNN
F 3 "" H 6400 10350 50  0001 C CNN
	1    6400 10350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 10100 6800 10100
Wire Wire Line
	6800 10150 6800 10100
Connection ~ 6800 10100
Wire Wire Line
	6800 10100 6900 10100
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0170
U 1 1 610EC60A
P 6800 10350
F 0 "#PWR0170" H 6800 10100 50  0001 C CNN
F 1 "GND" H 6805 10177 50  0000 C CNN
F 2 "" H 6800 10350 50  0001 C CNN
F 3 "" H 6800 10350 50  0001 C CNN
	1    6800 10350
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:SWITCH_SPST_LED-_switch-foodSampler_v20-rescue SW46
U 1 1 610EC614
P 6000 10100
F 0 "SW46" H 6000 10500 50  0000 L CNN
F 1 "SWITCH_LED" H 6000 10400 50  0000 L CNN
F 2 "_switch:MICRO_SW_LED" H 6000 10200 50  0001 C CNN
F 3 "" H 6000 10200 50  0001 C CNN
	1    6000 10100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 10300 6150 10350
Wire Wire Line
	5700 10300 5850 10300
Wire Wire Line
	5400 10300 5500 10300
$Comp
L foodSampler_v22-rescue:+3V3-power-foodSampler_v20-rescue #PWR0171
U 1 1 610EC621
P 5800 9900
F 0 "#PWR0171" H 5800 9750 50  0001 C CNN
F 1 "+3V3" H 5800 10050 50  0000 C CNN
F 2 "" H 5800 9900 50  0001 C CNN
F 3 "" H 5800 9900 50  0001 C CNN
	1    5800 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 9900 5850 9900
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue RL45
U 1 1 610EC55D
P 3400 10300
F 0 "RL45" V 3600 10400 50  0000 R CNN
F 1 "1K" V 3500 10350 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3400 10300 50  0001 C CNN
F 3 "~" H 3400 10300 50  0001 C CNN
	1    3400 10300
	0    -1   -1   0   
$EndComp
Text GLabel 5150 5850 0    50   Input ~ 0
VBUS
Wire Wire Line
	4750 5750 5600 5750
Wire Wire Line
	5600 5750 5600 5850
Wire Wire Line
	4750 5750 4750 6150
$Comp
L foodSampler_v22-rescue:FT231XS-Interface_USB-foodSampler_v20-rescue U10
U 1 1 605A571D
P 5500 6750
F 0 "U10" H 6000 7550 50  0000 C CNN
F 1 "FT231XS" H 5900 5950 50  0000 C CNN
F 2 "Package_SO:SSOP-20_3.9x8.7mm_P0.635mm" H 6100 5800 50  0001 C CNN
F 3 "http://www.ftdichip.com/Products/ICs/FT231X.html" H 5500 6750 50  0001 C CNN
	1    5500 6750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 5850 5150 5850
Text GLabel 3900 6650 0    50   Input ~ 0
VBUS
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R12
U 1 1 615BE5BD
P 4200 6750
F 0 "R12" H 4100 6800 50  0000 R CNN
F 1 "10K" H 4100 6700 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4200 6750 50  0001 C CNN
F 3 "~" H 4200 6750 50  0001 C CNN
	1    4200 6750
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:R_Small-Device-foodSampler_v20-rescue R13
U 1 1 615BEE02
P 4200 7050
F 0 "R13" H 4100 7100 50  0000 R CNN
F 1 "15K" H 4100 7000 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4200 7050 50  0001 C CNN
F 3 "~" H 4200 7050 50  0001 C CNN
	1    4200 7050
	1    0    0    -1  
$EndComp
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0172
U 1 1 615BF1E2
P 4200 7200
F 0 "#PWR0172" H 4200 6950 50  0001 C CNN
F 1 "GND" H 4205 7027 50  0000 C CNN
F 2 "" H 4200 7200 50  0001 C CNN
F 3 "" H 4200 7200 50  0001 C CNN
	1    4200 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 6650 4200 6650
Wire Wire Line
	4200 6850 4200 6900
Wire Wire Line
	4200 7150 4200 7200
Connection ~ 4200 6900
Wire Wire Line
	4200 6900 4200 6950
$Comp
L foodSampler_v22-rescue:C_Small-Device-foodSampler_v20-rescue C13
U 1 1 616177B6
P 4450 7050
F 0 "C13" H 4550 7100 50  0000 L CNN
F 1 "100nF" H 4550 7000 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4450 7050 50  0001 C CNN
F 3 "~" H 4450 7050 50  0001 C CNN
	1    4450 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 6900 4650 6750
Wire Wire Line
	4650 6750 4800 6750
Wire Wire Line
	4200 6900 4450 6900
Wire Wire Line
	4450 6900 4450 6950
Connection ~ 4450 6900
Wire Wire Line
	4450 6900 4650 6900
$Comp
L foodSampler_v22-rescue:GND-power-foodSampler_v20-rescue #PWR0173
U 1 1 61674B91
P 4450 7200
F 0 "#PWR0173" H 4450 6950 50  0001 C CNN
F 1 "GND" H 4455 7027 50  0000 C CNN
F 2 "" H 4450 7200 50  0001 C CNN
F 3 "" H 4450 7200 50  0001 C CNN
	1    4450 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 7150 4450 7200
Text GLabel 9300 10450 1    50   Input ~ 0
FT_RXD
Text GLabel 9600 10450 1    50   Input ~ 0
FT_TXD
$Comp
L foodSampler_v22-rescue:TP-_special-foodSampler_v20-rescue TP10
U 1 1 616B9EE0
P 9300 10550
F 0 "TP10" V 9400 10650 50  0000 R CNN
F 1 "RXD" V 9500 10600 50  0000 R CNN
F 2 "_connectors:TEST_PAD_HOLE_1mm" H 9300 10550 50  0001 C CNN
F 3 "" H 9300 10550 50  0001 C CNN
	1    9300 10550
	0    1    1    0   
$EndComp
$Comp
L foodSampler_v22-rescue:TP-_special-foodSampler_v20-rescue TP11
U 1 1 616BA63B
P 9600 10550
F 0 "TP11" V 9700 10650 50  0000 R CNN
F 1 "TXD" V 9800 10600 50  0000 R CNN
F 2 "_connectors:TEST_PAD_HOLE_1mm" H 9600 10550 50  0001 C CNN
F 3 "" H 9600 10550 50  0001 C CNN
	1    9600 10550
	0    1    1    0   
$EndComp
Text GLabel 4450 5750 0    50   Input ~ 0
3V3OUT
Wire Wire Line
	4450 5750 4600 5750
Connection ~ 4750 5750
Wire Wire Line
	4600 5850 4600 5750
Connection ~ 4600 5750
Wire Wire Line
	4600 5750 4750 5750
$EndSCHEMATC
