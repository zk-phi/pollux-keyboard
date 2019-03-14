EESchema Schematic File Version 4
LIBS:switch42-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
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
L kbd:ProMicro U1
U 1 1 5C22C4C5
P 2450 1950
F 0 "U1" H 2450 2987 60  0000 C CNN
F 1 "ProMicro" H 2450 2881 60  0000 C CNN
F 2 "phi-kbd-library:ProMicro_Reversed_Conthrough-irreversible" H 2550 900 60  0001 C CNN
F 3 "" H 2550 900 60  0000 C CNN
	1    2450 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C22C6E4
P 3450 2500
F 0 "#PWR06" H 3450 2250 50  0001 C CNN
F 1 "GND" H 3455 2327 50  0000 C CNN
F 2 "" H 3450 2500 50  0001 C CNN
F 3 "" H 3450 2500 50  0001 C CNN
	1    3450 2500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5C22C772
P 3550 1100
F 0 "#PWR07" H 3550 950 50  0001 C CNN
F 1 "VCC" H 3567 1273 50  0000 C CNN
F 2 "" H 3550 1100 50  0001 C CNN
F 3 "" H 3550 1100 50  0001 C CNN
	1    3550 1100
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW2
U 1 1 5C22C971
P 5150 1500
F 0 "SW2" H 5150 1755 50  0000 C CNN
F 1 "SW_PUSH" H 5150 1664 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 5150 1500 50  0001 C CNN
F 3 "" H 5150 1500 50  0000 C CNN
	1    5150 1500
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW5
U 1 1 5C22CA22
P 5950 1500
F 0 "SW5" H 5950 1755 50  0000 C CNN
F 1 "SW_PUSH" H 5950 1664 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 5950 1500 50  0001 C CNN
F 3 "" H 5950 1500 50  0000 C CNN
	1    5950 1500
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW8
U 1 1 5C22CA58
P 6750 1500
F 0 "SW8" H 6750 1755 50  0000 C CNN
F 1 "SW_PUSH" H 6750 1664 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 6750 1500 50  0001 C CNN
F 3 "" H 6750 1500 50  0000 C CNN
	1    6750 1500
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW11
U 1 1 5C22CA92
P 7550 1500
F 0 "SW11" H 7550 1755 50  0000 C CNN
F 1 "SW_PUSH" H 7550 1664 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 7550 1500 50  0001 C CNN
F 3 "" H 7550 1500 50  0000 C CNN
	1    7550 1500
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW14
U 1 1 5C22CAFE
P 8350 1500
F 0 "SW14" H 8350 1755 50  0000 C CNN
F 1 "SW_PUSH" H 8350 1664 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 8350 1500 50  0001 C CNN
F 3 "" H 8350 1500 50  0000 C CNN
	1    8350 1500
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW17
U 1 1 5C22CB3A
P 9150 1500
F 0 "SW17" H 9150 1755 50  0000 C CNN
F 1 "SW_PUSH" H 9150 1664 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 9150 1500 50  0001 C CNN
F 3 "" H 9150 1500 50  0000 C CNN
	1    9150 1500
	1    0    0    -1  
$EndComp
Text GLabel 4750 1800 0    50   Input ~ 0
row0
$Comp
L Device:D D1
U 1 1 5C22D475
P 5450 1650
F 0 "D1" V 5496 1571 50  0000 R CNN
F 1 "D" V 5405 1571 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 5450 1650 50  0001 C CNN
F 3 "~" H 5450 1650 50  0001 C CNN
	1    5450 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D4
U 1 1 5C22D8D9
P 6250 1650
F 0 "D4" V 6296 1571 50  0000 R CNN
F 1 "D" V 6205 1571 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 6250 1650 50  0001 C CNN
F 3 "~" H 6250 1650 50  0001 C CNN
	1    6250 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D7
U 1 1 5C22D927
P 7050 1650
F 0 "D7" V 7096 1571 50  0000 R CNN
F 1 "D" V 7005 1571 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 7050 1650 50  0001 C CNN
F 3 "~" H 7050 1650 50  0001 C CNN
	1    7050 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D10
U 1 1 5C22D975
P 7850 1650
F 0 "D10" V 7896 1571 50  0000 R CNN
F 1 "D" V 7805 1571 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 7850 1650 50  0001 C CNN
F 3 "~" H 7850 1650 50  0001 C CNN
	1    7850 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D13
U 1 1 5C22D9BD
P 8650 1650
F 0 "D13" V 8696 1571 50  0000 R CNN
F 1 "D" V 8605 1571 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 8650 1650 50  0001 C CNN
F 3 "~" H 8650 1650 50  0001 C CNN
	1    8650 1650
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D16
U 1 1 5C22DA07
P 9450 1650
F 0 "D16" V 9496 1571 50  0000 R CNN
F 1 "D" V 9405 1571 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 9450 1650 50  0001 C CNN
F 3 "~" H 9450 1650 50  0001 C CNN
	1    9450 1650
	0    -1   -1   0   
$EndComp
$Comp
L kbd:SW_PUSH SW3
U 1 1 5C22DF47
P 5150 2150
F 0 "SW3" H 5150 2405 50  0000 C CNN
F 1 "SW_PUSH" H 5150 2314 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 5150 2150 50  0001 C CNN
F 3 "" H 5150 2150 50  0000 C CNN
	1    5150 2150
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW6
U 1 1 5C22DF4E
P 5950 2150
F 0 "SW6" H 5950 2405 50  0000 C CNN
F 1 "SW_PUSH" H 5950 2314 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 5950 2150 50  0001 C CNN
F 3 "" H 5950 2150 50  0000 C CNN
	1    5950 2150
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW9
U 1 1 5C22DF55
P 6750 2150
F 0 "SW9" H 6750 2405 50  0000 C CNN
F 1 "SW_PUSH" H 6750 2314 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 6750 2150 50  0001 C CNN
F 3 "" H 6750 2150 50  0000 C CNN
	1    6750 2150
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW12
U 1 1 5C22DF5C
P 7550 2150
F 0 "SW12" H 7550 2405 50  0000 C CNN
F 1 "SW_PUSH" H 7550 2314 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 7550 2150 50  0001 C CNN
F 3 "" H 7550 2150 50  0000 C CNN
	1    7550 2150
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW15
U 1 1 5C22DF63
P 8350 2150
F 0 "SW15" H 8350 2405 50  0000 C CNN
F 1 "SW_PUSH" H 8350 2314 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 8350 2150 50  0001 C CNN
F 3 "" H 8350 2150 50  0000 C CNN
	1    8350 2150
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW18
U 1 1 5C22DF6A
P 9150 2150
F 0 "SW18" H 9150 2405 50  0000 C CNN
F 1 "SW_PUSH" H 9150 2314 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 9150 2150 50  0001 C CNN
F 3 "" H 9150 2150 50  0000 C CNN
	1    9150 2150
	1    0    0    -1  
$EndComp
Text GLabel 4750 2450 0    50   Input ~ 0
row1
$Comp
L Device:D D2
U 1 1 5C22DF72
P 5450 2300
F 0 "D2" V 5496 2221 50  0000 R CNN
F 1 "D" V 5405 2221 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 5450 2300 50  0001 C CNN
F 3 "~" H 5450 2300 50  0001 C CNN
	1    5450 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D5
U 1 1 5C22DF79
P 6250 2300
F 0 "D5" V 6296 2221 50  0000 R CNN
F 1 "D" V 6205 2221 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 6250 2300 50  0001 C CNN
F 3 "~" H 6250 2300 50  0001 C CNN
	1    6250 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D8
U 1 1 5C22DF80
P 7050 2300
F 0 "D8" V 7096 2221 50  0000 R CNN
F 1 "D" V 7005 2221 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 7050 2300 50  0001 C CNN
F 3 "~" H 7050 2300 50  0001 C CNN
	1    7050 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D11
U 1 1 5C22DF87
P 7850 2300
F 0 "D11" V 7896 2221 50  0000 R CNN
F 1 "D" V 7805 2221 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 7850 2300 50  0001 C CNN
F 3 "~" H 7850 2300 50  0001 C CNN
	1    7850 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D14
U 1 1 5C22DF8E
P 8650 2300
F 0 "D14" V 8696 2221 50  0000 R CNN
F 1 "D" V 8605 2221 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 8650 2300 50  0001 C CNN
F 3 "~" H 8650 2300 50  0001 C CNN
	1    8650 2300
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D17
U 1 1 5C22DF95
P 9450 2300
F 0 "D17" V 9496 2221 50  0000 R CNN
F 1 "D" V 9405 2221 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 9450 2300 50  0001 C CNN
F 3 "~" H 9450 2300 50  0001 C CNN
	1    9450 2300
	0    -1   -1   0   
$EndComp
$Comp
L kbd:SW_PUSH SW4
U 1 1 5C22E1E3
P 5150 2800
F 0 "SW4" H 5150 3055 50  0000 C CNN
F 1 "SW_PUSH" H 5150 2964 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 5150 2800 50  0001 C CNN
F 3 "" H 5150 2800 50  0000 C CNN
	1    5150 2800
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW7
U 1 1 5C22E1EA
P 5950 2800
F 0 "SW7" H 5950 3055 50  0000 C CNN
F 1 "SW_PUSH" H 5950 2964 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 5950 2800 50  0001 C CNN
F 3 "" H 5950 2800 50  0000 C CNN
	1    5950 2800
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW10
U 1 1 5C22E1F1
P 6750 2800
F 0 "SW10" H 6750 3055 50  0000 C CNN
F 1 "SW_PUSH" H 6750 2964 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 6750 2800 50  0001 C CNN
F 3 "" H 6750 2800 50  0000 C CNN
	1    6750 2800
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW13
U 1 1 5C22E1F8
P 7550 2800
F 0 "SW13" H 7550 3055 50  0000 C CNN
F 1 "SW_PUSH" H 7550 2964 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 7550 2800 50  0001 C CNN
F 3 "" H 7550 2800 50  0000 C CNN
	1    7550 2800
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW16
U 1 1 5C22E1FF
P 8350 2800
F 0 "SW16" H 8350 3055 50  0000 C CNN
F 1 "SW_PUSH" H 8350 2964 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 8350 2800 50  0001 C CNN
F 3 "" H 8350 2800 50  0000 C CNN
	1    8350 2800
	1    0    0    -1  
$EndComp
$Comp
L kbd:SW_PUSH SW19
U 1 1 5C22E206
P 9150 2800
F 0 "SW19" H 9150 3055 50  0000 C CNN
F 1 "SW_PUSH" H 9150 2964 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 9150 2800 50  0001 C CNN
F 3 "" H 9150 2800 50  0000 C CNN
	1    9150 2800
	1    0    0    -1  
$EndComp
Text GLabel 4750 3100 0    50   Input ~ 0
row2
$Comp
L Device:D D3
U 1 1 5C22E20E
P 5450 2950
F 0 "D3" V 5496 2871 50  0000 R CNN
F 1 "D" V 5405 2871 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 5450 2950 50  0001 C CNN
F 3 "~" H 5450 2950 50  0001 C CNN
	1    5450 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D6
U 1 1 5C22E215
P 6250 2950
F 0 "D6" V 6296 2871 50  0000 R CNN
F 1 "D" V 6205 2871 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 6250 2950 50  0001 C CNN
F 3 "~" H 6250 2950 50  0001 C CNN
	1    6250 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D9
U 1 1 5C22E21C
P 7050 2950
F 0 "D9" V 7096 2871 50  0000 R CNN
F 1 "D" V 7005 2871 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 7050 2950 50  0001 C CNN
F 3 "~" H 7050 2950 50  0001 C CNN
	1    7050 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D12
U 1 1 5C22E223
P 7850 2950
F 0 "D12" V 7896 2871 50  0000 R CNN
F 1 "D" V 7805 2871 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 7850 2950 50  0001 C CNN
F 3 "~" H 7850 2950 50  0001 C CNN
	1    7850 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D15
U 1 1 5C22E22A
P 8650 2950
F 0 "D15" V 8696 2871 50  0000 R CNN
F 1 "D" V 8605 2871 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 8650 2950 50  0001 C CNN
F 3 "~" H 8650 2950 50  0001 C CNN
	1    8650 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D18
U 1 1 5C22E231
P 9450 2950
F 0 "D18" V 9496 2871 50  0000 R CNN
F 1 "D" V 9405 2871 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 9450 2950 50  0001 C CNN
F 3 "~" H 9450 2950 50  0001 C CNN
	1    9450 2950
	0    -1   -1   0   
$EndComp
Text GLabel 5650 1300 1    50   Input ~ 0
col1
Text GLabel 6450 1300 1    50   Input ~ 0
col2
Wire Wire Line
	14150 1000 14150 -350
Wire Wire Line
	14150 -350 14900 -350
Text GLabel 7250 1300 1    50   Input ~ 0
col3
Text GLabel 8050 1300 1    50   Input ~ 0
col4
Text GLabel 8850 1300 1    50   Input ~ 0
col5
Text GLabel 4850 1300 1    50   Input ~ 0
col0
Text GLabel 1750 1800 0    50   Input ~ 0
row0
$Comp
L power:GND #PWR01
U 1 1 5C2AD0C2
P 1450 2500
F 0 "#PWR01" H 1450 2250 50  0001 C CNN
F 1 "GND" H 1455 2327 50  0000 C CNN
F 2 "" H 1450 2500 50  0001 C CNN
F 3 "" H 1450 2500 50  0001 C CNN
	1    1450 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 1500 1450 1500
Wire Wire Line
	1450 1500 1450 2500
Text GLabel 1750 1900 0    50   Input ~ 0
row1
NoConn ~ 1750 2200
NoConn ~ 1750 2300
Text GLabel 1750 2000 0    50   Input ~ 0
row2
Text GLabel 1750 2100 0    50   Input ~ 0
row3
Text GLabel 3150 1600 2    50   Input ~ 0
col0
Wire Wire Line
	3450 1300 3450 2500
Wire Wire Line
	3150 1300 3450 1300
Wire Wire Line
	3550 1100 3550 1500
Wire Wire Line
	3150 1500 3550 1500
Text GLabel 3150 1700 2    50   Input ~ 0
col1
Text GLabel 3150 1800 2    50   Input ~ 0
col2
Text GLabel 3150 1900 2    50   Input ~ 0
col3
Text GLabel 3150 2000 2    50   Input ~ 0
col4
Text GLabel 3150 2100 2    50   Input ~ 0
col5
NoConn ~ 3150 2300
$Comp
L kbd:SW_PUSH SW1
U 1 1 5C2974E7
P 3450 3200
F 0 "SW1" H 3450 3455 50  0000 C CNN
F 1 "SW_PUSH" H 3450 3364 50  0000 C CNN
F 2 "phi-kbd-library:ResetSW-irreversible" H 3450 3200 50  0001 C CNN
F 3 "" H 3450 3200 50  0000 C CNN
	1    3450 3200
	1    0    0    -1  
$EndComp
Text GLabel 3150 3200 0    50   Input ~ 0
reset
Text GLabel 3150 1400 2    50   Input ~ 0
reset
Wire Wire Line
	1450 1500 1450 1400
Wire Wire Line
	1450 1400 1750 1400
Connection ~ 1450 1500
$Comp
L power:GND #PWR08
U 1 1 5C2BCC21
P 3750 3200
F 0 "#PWR08" H 3750 2950 50  0001 C CNN
F 1 "GND" V 3755 3072 50  0000 R CNN
F 2 "" H 3750 3200 50  0001 C CNN
F 3 "" H 3750 3200 50  0001 C CNN
	1    3750 3200
	0    -1   -1   0   
$EndComp
$Comp
L kbd:MJ-4PP-9 J1
U 1 1 5C2CD64F
P 1550 3150
F 0 "J1" H 1580 3426 50  0000 C CNN
F 1 "MJ-4PP-9" H 1580 3335 50  0000 C CNN
F 2 "phi-kbd-library:MJ-4PP-9-irreversible" H 1825 3325 50  0001 C CNN
F 3 "~" H 1825 3325 50  0001 C CNN
	1    1550 3150
	1    0    0    -1  
$EndComp
NoConn ~ 1750 3075
$Comp
L power:VCC #PWR02
U 1 1 5C2E5AA4
P 1750 3125
F 0 "#PWR02" H 1750 2975 50  0001 C CNN
F 1 "VCC" V 1767 3253 50  0000 L CNN
F 2 "" H 1750 3125 50  0001 C CNN
F 3 "" H 1750 3125 50  0001 C CNN
	1    1750 3125
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5C2E83D7
P 1750 3175
F 0 "#PWR03" H 1750 2925 50  0001 C CNN
F 1 "GND" V 1755 3047 50  0000 R CNN
F 2 "" H 1750 3175 50  0001 C CNN
F 3 "" H 1750 3175 50  0001 C CNN
	1    1750 3175
	0    -1   -1   0   
$EndComp
Text GLabel 1750 3225 2    50   Input ~ 0
data
Text GLabel 1750 1300 0    50   Input ~ 0
data
Wire Wire Line
	4850 1300 4850 1500
Connection ~ 4850 1500
Wire Wire Line
	4850 1500 4850 2150
Connection ~ 4850 2150
Wire Wire Line
	4850 2150 4850 2800
Wire Wire Line
	5650 1300 5650 1500
Connection ~ 5650 1500
Wire Wire Line
	5650 1500 5650 2150
Connection ~ 6250 1800
Wire Wire Line
	6250 1800 7050 1800
Connection ~ 5650 2150
Wire Wire Line
	5650 2150 5650 2800
Connection ~ 6250 2450
Wire Wire Line
	6250 2450 7050 2450
Connection ~ 6250 3100
Wire Wire Line
	6250 3100 7050 3100
Wire Wire Line
	6450 1300 6450 1500
Connection ~ 6450 1500
Wire Wire Line
	6450 1500 6450 2150
Connection ~ 7050 1800
Wire Wire Line
	7050 1800 7850 1800
Connection ~ 7050 3100
Wire Wire Line
	7050 3100 7850 3100
Wire Wire Line
	7250 1300 7250 1500
Connection ~ 7250 1500
Wire Wire Line
	7250 1500 7250 2150
Connection ~ 7850 1800
Wire Wire Line
	7850 1800 8650 1800
Connection ~ 7250 2150
Wire Wire Line
	7250 2150 7250 2800
Connection ~ 7850 2450
Wire Wire Line
	7850 2450 8650 2450
Connection ~ 7850 3100
Wire Wire Line
	7850 3100 8650 3100
Wire Wire Line
	8050 1300 8050 1500
Connection ~ 8050 1500
Wire Wire Line
	8050 1500 8050 2150
Connection ~ 8650 1800
Wire Wire Line
	8650 1800 9450 1800
Connection ~ 8050 2150
Wire Wire Line
	8050 2150 8050 2800
Connection ~ 8650 2450
Wire Wire Line
	8650 2450 9450 2450
Connection ~ 8650 3100
Wire Wire Line
	8650 3100 9450 3100
Wire Wire Line
	8850 1300 8850 1500
Connection ~ 8850 1500
Wire Wire Line
	8850 1500 8850 2150
Connection ~ 8850 2150
Wire Wire Line
	8850 2150 8850 2800
Wire Wire Line
	4750 1800 5450 1800
Connection ~ 5450 1800
Wire Wire Line
	5450 1800 6250 1800
Wire Wire Line
	4750 2450 5450 2450
Connection ~ 5450 2450
Wire Wire Line
	5450 2450 6250 2450
Wire Wire Line
	5450 3100 6250 3100
$Comp
L power:GND #PWR04
U 1 1 5C36654D
P 2300 3125
F 0 "#PWR04" H 2300 2875 50  0001 C CNN
F 1 "GND" H 2305 2952 50  0000 C CNN
F 2 "" H 2300 3125 50  0001 C CNN
F 3 "" H 2300 3125 50  0001 C CNN
	1    2300 3125
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5C36663F
P 2300 3125
F 0 "#FLG01" H 2300 3200 50  0001 C CNN
F 1 "PWR_FLAG" H 2300 3299 50  0000 C CNN
F 2 "" H 2300 3125 50  0001 C CNN
F 3 "~" H 2300 3125 50  0001 C CNN
	1    2300 3125
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5C367006
P 2625 3125
F 0 "#PWR05" H 2625 2975 50  0001 C CNN
F 1 "VCC" H 2642 3298 50  0000 C CNN
F 2 "" H 2625 3125 50  0001 C CNN
F 3 "" H 2625 3125 50  0001 C CNN
	1    2625 3125
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5C3670F8
P 2625 3125
F 0 "#FLG02" H 2625 3200 50  0001 C CNN
F 1 "PWR_FLAG" H 2625 3298 50  0000 C CNN
F 2 "" H 2625 3125 50  0001 C CNN
F 3 "~" H 2625 3125 50  0001 C CNN
	1    2625 3125
	1    0    0    1   
$EndComp
Connection ~ 6450 2150
Wire Wire Line
	6450 2150 6450 2800
Connection ~ 7050 2450
Wire Wire Line
	7050 2450 7850 2450
NoConn ~ 3150 1200
NoConn ~ 1750 1600
NoConn ~ 1750 1700
Wire Wire Line
	4750 3100 5450 3100
Connection ~ 5450 3100
$Comp
L kbd:SW_PUSH SW21
U 1 1 5C4E7E26
P 9950 1500
F 0 "SW21" H 9950 1755 50  0000 C CNN
F 1 "SW_PUSH" H 9950 1664 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 9950 1500 50  0001 C CNN
F 3 "" H 9950 1500 50  0000 C CNN
	1    9950 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:D D20
U 1 1 5C4E7E2D
P 10250 1650
F 0 "D20" V 10296 1571 50  0000 R CNN
F 1 "D" V 10205 1571 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 10250 1650 50  0001 C CNN
F 3 "~" H 10250 1650 50  0001 C CNN
	1    10250 1650
	0    -1   -1   0   
$EndComp
$Comp
L kbd:SW_PUSH SW22
U 1 1 5C4F07F9
P 9950 2800
F 0 "SW22" H 9950 3055 50  0000 C CNN
F 1 "SW_PUSH" H 9950 2964 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 9950 2800 50  0001 C CNN
F 3 "" H 9950 2800 50  0000 C CNN
	1    9950 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:D D21
U 1 1 5C4F0800
P 10250 2950
F 0 "D21" V 10296 2871 50  0000 R CNN
F 1 "D" V 10205 2871 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 10250 2950 50  0001 C CNN
F 3 "~" H 10250 2950 50  0001 C CNN
	1    10250 2950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 1800 10250 1800
Connection ~ 9450 1800
Wire Wire Line
	9450 3100 10250 3100
Connection ~ 9450 3100
Wire Wire Line
	9650 1300 9650 1500
Connection ~ 9650 1500
Text GLabel 9650 1300 1    50   Input ~ 0
col6
Text GLabel 3150 2200 2    50   Input ~ 0
col6
NoConn ~ 1750 1200
Wire Wire Line
	9650 1500 9650 2800
$Comp
L kbd:SW_PUSH SW23
U 1 1 5C5DD285
P 9950 3450
F 0 "SW23" H 9950 3705 50  0000 C CNN
F 1 "SW_PUSH" H 9950 3614 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.25u-narrow-irreversible-right" H 9950 3450 50  0001 C CNN
F 3 "" H 9950 3450 50  0000 C CNN
	1    9950 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:D D22
U 1 1 5C5DD28C
P 10250 3600
F 0 "D22" V 10296 3521 50  0000 R CNN
F 1 "D" V 10205 3521 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 10250 3600 50  0001 C CNN
F 3 "~" H 10250 3600 50  0001 C CNN
	1    10250 3600
	0    -1   -1   0   
$EndComp
$Comp
L kbd:SW_PUSH SW20
U 1 1 5C5DE165
P 9150 3450
F 0 "SW20" H 9150 3705 50  0000 C CNN
F 1 "SW_PUSH" H 9150 3614 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 9150 3450 50  0001 C CNN
F 3 "" H 9150 3450 50  0000 C CNN
	1    9150 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:D D19
U 1 1 5C5DE16C
P 9450 3600
F 0 "D19" V 9496 3521 50  0000 R CNN
F 1 "D" V 9405 3521 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 9450 3600 50  0001 C CNN
F 3 "~" H 9450 3600 50  0001 C CNN
	1    9450 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8850 2800 8850 3450
Connection ~ 8850 2800
Wire Wire Line
	9650 2800 9650 3450
Connection ~ 9650 2800
Wire Wire Line
	10250 3750 9450 3750
Text GLabel 8750 3750 0    50   Input ~ 0
row3
Connection ~ 9450 3750
$Comp
L kbd:ProMicro U2
U 1 1 5C5EC1C1
P 2525 5025
F 0 "U2" H 2525 6062 60  0000 C CNN
F 1 "ProMicro" H 2525 5956 60  0000 C CNN
F 2 "phi-kbd-library:ProMicro_Reversed_Conthrough-irreversible" H 2625 3975 60  0001 C CNN
F 3 "" H 2625 3975 60  0000 C CNN
	1    2525 5025
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5C5EC1C8
P 3525 5575
F 0 "#PWR010" H 3525 5325 50  0001 C CNN
F 1 "GND" H 3530 5402 50  0000 C CNN
F 2 "" H 3525 5575 50  0001 C CNN
F 3 "" H 3525 5575 50  0001 C CNN
	1    3525 5575
	1    0    0    -1  
$EndComp
Text GLabel 1825 4875 0    50   Input ~ 0
row0
$Comp
L power:GND #PWR09
U 1 1 5C5EC1D5
P 1525 5575
F 0 "#PWR09" H 1525 5325 50  0001 C CNN
F 1 "GND" H 1530 5402 50  0000 C CNN
F 2 "" H 1525 5575 50  0001 C CNN
F 3 "" H 1525 5575 50  0001 C CNN
	1    1525 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	1825 4575 1525 4575
Wire Wire Line
	1525 4575 1525 5575
Text GLabel 1825 4975 0    50   Input ~ 0
row1
NoConn ~ 1825 5275
NoConn ~ 1825 5375
Text GLabel 1825 5075 0    50   Input ~ 0
row2
Text GLabel 1825 5175 0    50   Input ~ 0
row3
Text GLabel 3225 4675 2    50   Input ~ 0
col0
Wire Wire Line
	3525 4375 3525 5575
Wire Wire Line
	3225 4375 3525 4375
Wire Wire Line
	3625 4175 3625 4575
Wire Wire Line
	3225 4575 3625 4575
Text GLabel 3225 4775 2    50   Input ~ 0
col1
Text GLabel 3225 4875 2    50   Input ~ 0
col2
Text GLabel 3225 4975 2    50   Input ~ 0
col3
Text GLabel 3225 5075 2    50   Input ~ 0
col4
Text GLabel 3225 5175 2    50   Input ~ 0
col5
NoConn ~ 3225 5375
Text GLabel 3225 4475 2    50   Input ~ 0
reset2
Wire Wire Line
	1525 4575 1525 4475
Wire Wire Line
	1525 4475 1825 4475
Connection ~ 1525 4575
Text GLabel 1825 4375 0    50   Input ~ 0
data2
NoConn ~ 3225 4275
NoConn ~ 1825 4675
NoConn ~ 1825 4775
Text GLabel 3225 5275 2    50   Input ~ 0
col6
NoConn ~ 1825 4275
$Comp
L kbd:SW_PUSH SW24
U 1 1 5C5EDCAB
P 4325 5625
F 0 "SW24" H 4325 5880 50  0000 C CNN
F 1 "SW_PUSH" H 4325 5789 50  0000 C CNN
F 2 "phi-kbd-library:ResetSW-irreversible" H 4325 5625 50  0001 C CNN
F 3 "" H 4325 5625 50  0000 C CNN
	1    4325 5625
	1    0    0    -1  
$EndComp
Text GLabel 4025 5625 0    50   Input ~ 0
reset2
$Comp
L power:GND #PWR012
U 1 1 5C5EDCB3
P 4625 5625
F 0 "#PWR012" H 4625 5375 50  0001 C CNN
F 1 "GND" V 4630 5497 50  0000 R CNN
F 2 "" H 4625 5625 50  0001 C CNN
F 3 "" H 4625 5625 50  0001 C CNN
	1    4625 5625
	0    -1   -1   0   
$EndComp
$Comp
L kbd:MJ-4PP-9 J2
U 1 1 5C5F2E42
P 3925 5075
F 0 "J2" H 3955 5351 50  0000 C CNN
F 1 "MJ-4PP-9" H 3955 5260 50  0000 C CNN
F 2 "phi-kbd-library:MJ-4PP-9-irreversible" H 4200 5250 50  0001 C CNN
F 3 "~" H 4200 5250 50  0001 C CNN
	1    3925 5075
	1    0    0    -1  
$EndComp
NoConn ~ 4125 5000
$Comp
L power:GND #PWR0102
U 1 1 5C5F2E50
P 4125 5100
F 0 "#PWR0102" H 4125 4850 50  0001 C CNN
F 1 "GND" V 4130 4972 50  0000 R CNN
F 2 "" H 4125 5100 50  0001 C CNN
F 3 "" H 4125 5100 50  0001 C CNN
	1    4125 5100
	0    -1   -1   0   
$EndComp
Text GLabel 4125 5150 2    50   Input ~ 0
data2
$Comp
L power:VCC #PWR0101
U 1 1 5C641BA9
P 3625 4175
F 0 "#PWR0101" H 3625 4025 50  0001 C CNN
F 1 "VCC" H 3642 4348 50  0000 C CNN
F 2 "" H 3625 4175 50  0001 C CNN
F 3 "" H 3625 4175 50  0001 C CNN
	1    3625 4175
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 5C64214A
P 4125 5050
F 0 "#PWR0103" H 4125 4900 50  0001 C CNN
F 1 "VCC" V 4142 5178 50  0000 L CNN
F 2 "" H 4125 5050 50  0001 C CNN
F 3 "" H 4125 5050 50  0001 C CNN
	1    4125 5050
	0    1    1    0   
$EndComp
$Comp
L kbd:SW_PUSH SW26
U 1 1 5C8A9403
P 5950 3450
F 0 "SW26" H 5950 3705 50  0000 C CNN
F 1 "SW_PUSH" H 5950 3614 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.25u-narrow-irreversible-right" H 5950 3450 50  0001 C CNN
F 3 "" H 5950 3450 50  0000 C CNN
	1    5950 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:D D24
U 1 1 5C8A940A
P 6250 3600
F 0 "D24" V 6296 3521 50  0000 R CNN
F 1 "D" V 6205 3521 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 6250 3600 50  0001 C CNN
F 3 "~" H 6250 3600 50  0001 C CNN
	1    6250 3600
	0    -1   -1   0   
$EndComp
$Comp
L kbd:SW_PUSH SW25
U 1 1 5C8A9411
P 5150 3450
F 0 "SW25" H 5150 3705 50  0000 C CNN
F 1 "SW_PUSH" H 5150 3614 50  0000 C CNN
F 2 "phi-kbd-library:Choc_1.00u-narrow-irreversible" H 5150 3450 50  0001 C CNN
F 3 "" H 5150 3450 50  0000 C CNN
	1    5150 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:D D23
U 1 1 5C8A9418
P 5450 3600
F 0 "D23" V 5496 3521 50  0000 R CNN
F 1 "D" V 5405 3521 50  0000 R CNN
F 2 "phi-kbd-library:D_SMD-irreversible" H 5450 3600 50  0001 C CNN
F 3 "~" H 5450 3600 50  0001 C CNN
	1    5450 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 3750 5450 3750
Text GLabel 4750 3750 0    50   Input ~ 0
row3
Connection ~ 5450 3750
Wire Wire Line
	5650 2800 5650 3450
Connection ~ 5650 2800
Wire Wire Line
	4850 3450 4850 2800
Connection ~ 4850 2800
Wire Wire Line
	4750 3750 5450 3750
Wire Wire Line
	8750 3750 9450 3750
$EndSCHEMATC
