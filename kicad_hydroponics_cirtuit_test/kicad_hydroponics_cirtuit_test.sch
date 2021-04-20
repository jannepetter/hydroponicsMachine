EESchema Schematic File Version 4
EELAYER 30 0
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
L Transistor_FET:IRLZ34N Q1
U 1 1 60748F81
P 6950 3350
F 0 "Q1" H 7154 3396 50  0000 L CNN
F 1 "IRLZ34N" H 7154 3305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7200 3275 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/irlz34npbf.pdf?fileId=5546d462533600a40153567206892720" H 6950 3350 50  0001 L CNN
	1    6950 3350
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D2
U 1 1 6074A480
P 6650 2900
F 0 "D2" H 6650 2683 50  0000 C CNN
F 1 "1N4007" H 6650 2774 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 6650 2725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6650 2900 50  0001 C CNN
	1    6650 2900
	-1   0    0    1   
$EndComp
$Comp
L fab:R R3
U 1 1 60752E1F
P 4600 2100
F 0 "R3" H 4670 2146 50  0000 L CNN
F 1 "R" H 4670 2055 50  0000 L CNN
F 2 "fab:R_1206" V 4530 2100 50  0001 C CNN
F 3 "~" H 4600 2100 50  0001 C CNN
	1    4600 2100
	1    0    0    -1  
$EndComp
$Comp
L fab:Arduino_UNO_R3 A1
U 1 1 60745A6F
P 5450 2600
F 0 "A1" H 5450 3781 50  0000 C CNN
F 1 "Arduino_UNO_R3" H 5450 3690 50  0000 C CNN
F 2 "fab:Arduino_UNO_R3_WithMountingHoles" H 5450 2600 50  0001 C CIN
F 3 "https://www.arduino.cc/en/Main/arduinoBoardUno" H 5450 2600 50  0001 C CNN
	1    5450 2600
	1    0    0    -1  
$EndComp
$Comp
L fab:LED D3
U 1 1 60755A04
P 4300 2450
F 0 "D3" H 4293 2666 50  0000 C CNN
F 1 "LED" H 4293 2575 50  0000 C CNN
F 2 "fab:LED_1206" H 4300 2450 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS-22-98-0002/LTST-C150CKT.pdf" H 4300 2450 50  0001 C CNN
	1    4300 2450
	1    0    0    -1  
$EndComp
$Comp
L fab:LED D1
U 1 1 60756322
P 4300 1950
F 0 "D1" H 4293 2166 50  0000 C CNN
F 1 "LED" H 4293 2075 50  0000 C CNN
F 2 "fab:LED_1206" H 4300 1950 50  0001 C CNN
F 3 "https://optoelectronics.liteon.com/upload/download/DS-22-98-0002/LTST-C150CKT.pdf" H 4300 1950 50  0001 C CNN
	1    4300 1950
	1    0    0    -1  
$EndComp
$Comp
L fab:R R1
U 1 1 60756A6C
P 6550 3500
F 0 "R1" H 6620 3546 50  0000 L CNN
F 1 "R" H 6620 3455 50  0000 L CNN
F 2 "fab:R_1206" V 6480 3500 50  0001 C CNN
F 3 "~" H 6550 3500 50  0001 C CNN
	1    6550 3500
	1    0    0    -1  
$EndComp
$Comp
L fab:R R2
U 1 1 607570CF
P 4600 2600
F 0 "R2" H 4670 2646 50  0000 L CNN
F 1 "R" H 4670 2555 50  0000 L CNN
F 2 "fab:R_1206" V 4530 2600 50  0001 C CNN
F 3 "~" H 4600 2600 50  0001 C CNN
	1    4600 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3350 4750 2900
Wire Wire Line
	4750 2900 4950 2900
Wire Wire Line
	4450 1950 4600 1950
Wire Wire Line
	4600 2450 4450 2450
Wire Wire Line
	4600 2250 4800 2250
Wire Wire Line
	4800 2250 4800 2700
Wire Wire Line
	4800 2700 4950 2700
Wire Wire Line
	4600 2750 4600 2800
Wire Wire Line
	4600 2800 4950 2800
Wire Wire Line
	4150 2450 4100 2450
Wire Wire Line
	4100 2450 4100 3750
Wire Wire Line
	4100 3750 5550 3750
Wire Wire Line
	5550 3750 5550 3700
Wire Wire Line
	4150 1950 4100 1950
Wire Wire Line
	4100 1950 4100 2450
Connection ~ 4100 2450
Wire Wire Line
	7050 3550 7050 3750
Wire Wire Line
	7050 3750 6550 3750
Connection ~ 5550 3750
Wire Wire Line
	6550 3650 6550 3750
Connection ~ 6550 3750
Wire Wire Line
	6550 3750 5550 3750
Wire Wire Line
	4750 3350 6550 3350
Connection ~ 6550 3350
Wire Wire Line
	6550 3350 6750 3350
Wire Wire Line
	7050 3150 6500 3150
Wire Wire Line
	6500 3150 6500 2900
Wire Wire Line
	6800 2900 6800 1350
Wire Wire Line
	6800 1350 5350 1350
Wire Wire Line
	5350 1350 5350 1600
$EndSCHEMATC
