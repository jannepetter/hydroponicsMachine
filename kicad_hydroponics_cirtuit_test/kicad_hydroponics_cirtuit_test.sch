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
L fab:R R1
U 1 1 60752E1F
P 4600 2100
F 0 "R1" H 4670 2146 50  0000 L CNN
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
L fab:LED D2
U 1 1 60755A04
P 4300 2450
F 0 "D2" H 4293 2666 50  0000 C CNN
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
L fab:R R3
U 1 1 60756A6C
P 6550 3500
F 0 "R3" H 6620 3546 50  0000 L CNN
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
	4750 2900 4950 2900
Wire Wire Line
	4450 1950 4600 1950
Wire Wire Line
	4600 2450 4450 2450
Wire Wire Line
	4600 2250 4750 2250
Wire Wire Line
	4600 2750 4600 2800
Wire Wire Line
	4600 2800 4950 2800
Wire Wire Line
	4150 2450 4100 2450
Wire Wire Line
	4150 1950 4100 1950
Wire Wire Line
	4100 1950 4100 2450
Connection ~ 4100 2450
Wire Wire Line
	7050 3750 6550 3750
Wire Wire Line
	6550 3650 6550 3750
Wire Wire Line
	5350 1350 5350 1600
$Comp
L fab:MOSFET_N-CH_30V_1.7A Q1
U 1 1 607F16BB
P 7050 3250
F 0 "Q1" H 7158 3313 45  0000 L CNN
F 1 "MOSFET_N-CH_30V_1.7A" H 7158 3229 45  0000 L CNN
F 2 "fab:SOT-23" H 7158 3166 20  0000 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/NDS355AN-D.PDF" H 7050 3250 50  0001 C CNN
	1    7050 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3350 6850 3350
Wire Wire Line
	7050 3450 7050 3750
$Comp
L fab:R R4
U 1 1 607FD04D
P 8300 3700
F 0 "R4" H 8370 3746 50  0000 L CNN
F 1 "R" H 8370 3655 50  0000 L CNN
F 2 "fab:R_1206" V 8230 3700 50  0001 C CNN
F 3 "~" H 8300 3700 50  0001 C CNN
	1    8300 3700
	1    0    0    -1  
$EndComp
$Comp
L fab:R R5
U 1 1 607FDECE
P 8700 3700
F 0 "R5" H 8770 3746 50  0000 L CNN
F 1 "R" H 8770 3655 50  0000 L CNN
F 2 "fab:R_1206" V 8630 3700 50  0001 C CNN
F 3 "~" H 8700 3700 50  0001 C CNN
	1    8700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 4000 8700 3850
Wire Wire Line
	8300 3850 8300 4000
$Comp
L fab:Conn_01x06_Male J2
U 1 1 6080111E
P 9300 3000
F 0 "J2" H 9408 3381 50  0000 C CNN
F 1 "Conn_01x06_Male" H 9408 3290 50  0000 C CNN
F 2 "fab:Header_SMD_01x06_P2.54mm_Horizontal_Male" H 9300 3000 50  0001 C CNN
F 3 "~" H 9300 3000 50  0001 C CNN
	1    9300 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9100 3300 8700 3300
Wire Wire Line
	8700 3300 8700 3550
Wire Wire Line
	9100 3000 8300 3000
Wire Wire Line
	8300 3000 8300 3550
Wire Wire Line
	9100 2800 8950 2800
Wire Wire Line
	8950 2800 8950 3100
Wire Wire Line
	8950 4000 8700 4000
Connection ~ 8700 4000
Wire Wire Line
	9100 3100 8950 3100
Connection ~ 8950 3100
Wire Wire Line
	8950 3100 8950 4000
$Comp
L fab:Conn_01x02_Male J1
U 1 1 608116CF
P 9250 1850
F 0 "J1" H 9222 1732 50  0000 R CNN
F 1 "Conn_01x02_Male" H 9222 1823 50  0000 R CNN
F 2 "fab:Header_SMD_01x02_P2.54mm_Horizontal_Male" H 9250 1850 50  0001 C CNN
F 3 "~" H 9250 1850 50  0001 C CNN
	1    9250 1850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7050 1350 7050 1850
Wire Wire Line
	5350 1350 7050 1350
Wire Wire Line
	9050 1950 7450 1950
Wire Wire Line
	4100 2450 4100 4000
Wire Wire Line
	6550 3750 6550 4000
Connection ~ 6550 3750
Wire Wire Line
	6200 3850 6200 3350
Wire Wire Line
	6200 3350 6550 3350
Wire Wire Line
	4750 2900 4750 3850
Connection ~ 6550 3350
Wire Wire Line
	7050 2150 7050 2250
Wire Wire Line
	7450 2250 7050 2250
Connection ~ 7050 2250
Wire Wire Line
	7050 2250 7050 3050
Wire Wire Line
	7450 1950 7450 2250
Connection ~ 8300 3000
Wire Wire Line
	8500 3300 8700 3300
Connection ~ 8700 3300
Connection ~ 7050 1850
$Comp
L Diode:1N4007 D3
U 1 1 6074A480
P 7050 2000
F 0 "D3" H 7050 1783 50  0000 C CNN
F 1 "1N4007" H 7050 1874 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 7050 1825 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 7050 2000 50  0001 C CNN
	1    7050 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 4000 8700 4000
Wire Wire Line
	5950 2600 8300 2600
Wire Wire Line
	8300 2600 8300 3000
Wire Wire Line
	5950 2700 8500 2700
Wire Wire Line
	8500 2700 8500 3300
Wire Wire Line
	6550 4000 8300 4000
Connection ~ 6550 4000
Connection ~ 8300 4000
Wire Wire Line
	7050 1850 9050 1850
Wire Wire Line
	9100 3200 8550 3200
Wire Wire Line
	8550 3200 8550 1250
Wire Wire Line
	8550 1250 4900 1250
Wire Wire Line
	4900 1250 4900 2200
Wire Wire Line
	4900 2200 4950 2200
Wire Wire Line
	4750 2250 4750 2700
Wire Wire Line
	4750 2700 4950 2700
Wire Wire Line
	4950 2300 4850 2300
Wire Wire Line
	4850 2300 4850 1200
Wire Wire Line
	4850 1200 8600 1200
Wire Wire Line
	8600 1200 8600 2900
Wire Wire Line
	8600 2900 9100 2900
Wire Wire Line
	6200 3850 4750 3850
Wire Wire Line
	5550 3700 5550 4000
Connection ~ 5550 4000
Wire Wire Line
	5550 4000 6550 4000
$Comp
L power:GND #PWR0101
U 1 1 608146A2
P 6550 4350
F 0 "#PWR0101" H 6550 4100 50  0001 C CNN
F 1 "GND" H 6555 4177 50  0000 C CNN
F 2 "" H 6550 4350 50  0001 C CNN
F 3 "" H 6550 4350 50  0001 C CNN
	1    6550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4350 6550 4000
Wire Wire Line
	4100 4000 5550 4000
$EndSCHEMATC
