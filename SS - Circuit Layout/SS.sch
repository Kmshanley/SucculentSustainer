EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 5937 7875
encoding utf-8
Sheet 1 1
Title "Succulent Sustainer"
Date "2020-04-13"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L dk_PMIC-Voltage-Regulators-Linear:L7805CV REG1
U 1 1 5E94E416
P 1150 3400
F 0 "REG1" H 1150 3687 60  0000 C CNN
F 1 "L7805CV" H 1150 3581 60  0000 C CNN
F 2 "digikey-footprints:TO-220-3" H 1350 3600 60  0001 L CNN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1350 3700 60  0001 L CNN
F 4 "497-1443-5-ND" H 1350 3800 60  0001 L CNN "Digi-Key_PN"
F 5 "L7805CV" H 1350 3900 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 1350 4000 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 1350 4100 60  0001 L CNN "Family"
F 8 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 1350 4200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/stmicroelectronics/L7805CV/497-1443-5-ND/585964" H 1350 4300 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 5V 1.5A TO220AB" H 1350 4400 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 1350 4500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1350 4600 60  0001 L CNN "Status"
	1    1150 3400
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:FQP30N06L Q1
U 1 1 5E951124
P 4000 4400
F 0 "Q1" H 4108 4453 60  0000 L CNN
F 1 "FQP30N06L" H 4108 4347 60  0000 L CNN
F 2 "digikey-footprints:TO-220-3" H 4200 4600 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/FQP30N06L-D.pdf" H 4200 4700 60  0001 L CNN
F 4 "FQP30N06L-ND" H 4200 4800 60  0001 L CNN "Digi-Key_PN"
F 5 "FQP30N06L" H 4200 4900 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4200 5000 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 4200 5100 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/FQP30N06L-D.pdf" H 4200 5200 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/FQP30N06L/FQP30N06L-ND/1055122" H 4200 5300 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 32A TO-220" H 4200 5400 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4200 5500 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4200 5600 60  0001 L CNN "Status"
	1    4000 4400
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:FQP30N06L Q2
U 1 1 5E951C01
P 4000 3700
F 0 "Q2" H 4108 3753 60  0000 L CNN
F 1 "FQP30N06L" H 4108 3647 60  0000 L CNN
F 2 "digikey-footprints:TO-220-3" H 4200 3900 60  0001 L CNN
F 3 "https://www.onsemi.com/pub/Collateral/FQP30N06L-D.pdf" H 4200 4000 60  0001 L CNN
F 4 "FQP30N06L-ND" H 4200 4100 60  0001 L CNN "Digi-Key_PN"
F 5 "FQP30N06L" H 4200 4200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4200 4300 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 4200 4400 60  0001 L CNN "Family"
F 8 "https://www.onsemi.com/pub/Collateral/FQP30N06L-D.pdf" H 4200 4500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/on-semiconductor/FQP30N06L/FQP30N06L-ND/1055122" H 4200 4600 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 60V 32A TO-220" H 4200 4700 60  0001 L CNN "Description"
F 11 "ON Semiconductor" H 4200 4800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4200 4900 60  0001 L CNN "Status"
	1    4000 3700
	1    0    0    -1  
$EndComp
$Comp
L dk_Humidity-Moisture-Sensors:BME280 Sensor1
U 1 1 5E953959
P 3450 3200
F 0 "Sensor1" H 3778 3303 60  0000 L CNN
F 1 "BME280" H 3778 3197 60  0000 L CNN
F 2 "digikey-footprints:Pressure_Sensor_LGA-8_2.5x2.5mm_BME280" H 3650 3400 60  0001 L CNN
F 3 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280-DS002.pdf" H 3650 3500 60  0001 L CNN
F 4 "828-1063-1-ND" H 3650 3600 60  0001 L CNN "Digi-Key_PN"
F 5 "BME280" H 3650 3700 60  0001 L CNN "MPN"
F 6 "Sensors, Transducers" H 3650 3800 60  0001 L CNN "Category"
F 7 "Humidity, Moisture Sensors" H 3650 3900 60  0001 L CNN "Family"
F 8 "https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280-DS002.pdf" H 3650 4000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/bosch-sensortec/BME280/828-1063-1-ND/6136314" H 3650 4100 60  0001 L CNN "DK_Detail_Page"
F 10 "SENSOR PRESSURE HUMIDITY TEMP" H 3650 4200 60  0001 L CNN "Description"
F 11 "Bosch Sensortec" H 3650 4300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3650 4400 60  0001 L CNN "Status"
	1    3450 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E954584
P 1150 3850
F 0 "#PWR0101" H 1150 3600 50  0001 C CNN
F 1 "GND" H 1155 3677 50  0000 C CNN
F 2 "" H 1150 3850 50  0001 C CNN
F 3 "" H 1150 3850 50  0001 C CNN
	1    1150 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0102
U 1 1 5E954DF1
P 850 3850
F 0 "#PWR0102" H 850 3700 50  0001 C CNN
F 1 "+12V" H 865 4023 50  0000 C CNN
F 2 "" H 850 3850 50  0001 C CNN
F 3 "" H 850 3850 50  0001 C CNN
	1    850  3850
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5E9553A1
P 1550 3400
F 0 "#PWR0103" H 1550 3250 50  0001 C CNN
F 1 "+5V" V 1565 3528 50  0000 L CNN
F 2 "" H 1550 3400 50  0001 C CNN
F 3 "" H 1550 3400 50  0001 C CNN
	1    1550 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	1150 3850 1150 3700
Wire Wire Line
	850  3400 850  3850
$Comp
L power:GND #PWR0104
U 1 1 5E958574
P 2550 4750
F 0 "#PWR0104" H 2550 4500 50  0001 C CNN
F 1 "GND" V 2555 4622 50  0000 R CNN
F 2 "" H 2550 4750 50  0001 C CNN
F 3 "" H 2550 4750 50  0001 C CNN
	1    2550 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2550 4750 2400 4750
$Comp
L MCU_Module:WeMos_D1_mini MCU1
U 1 1 5E961148
P 2400 3950
F 0 "MCU1" H 2400 3061 50  0000 C CNN
F 1 "WeMos_D1_mini" H 2400 2970 50  0000 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 2400 2800 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 550 2800 50  0001 C CNN
	1    2400 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 4050 3000 4050
Wire Wire Line
	2800 3950 3250 3950
Wire Wire Line
	3700 3950 3700 3800
Wire Wire Line
	1550 3400 1450 3400
$Comp
L power:+5V #PWR0105
U 1 1 5E969595
P 2300 3050
F 0 "#PWR0105" H 2300 2900 50  0001 C CNN
F 1 "+5V" H 2315 3223 50  0000 C CNN
F 2 "" H 2300 3050 50  0001 C CNN
F 3 "" H 2300 3050 50  0001 C CNN
	1    2300 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3050 2300 3150
Wire Wire Line
	2800 3650 2900 3650
Wire Wire Line
	2900 3650 2900 3000
Wire Wire Line
	2900 3000 3050 3000
Wire Wire Line
	3050 3100 2950 3100
Wire Wire Line
	2950 3100 2950 3750
Wire Wire Line
	2950 3750 2800 3750
Wire Wire Line
	3700 4050 3700 4500
$Comp
L power:GND #PWR0106
U 1 1 5E96B440
P 4000 3950
F 0 "#PWR0106" H 4000 3700 50  0001 C CNN
F 1 "GND" H 4005 3777 50  0000 C CNN
F 2 "" H 4000 3950 50  0001 C CNN
F 3 "" H 4000 3950 50  0001 C CNN
	1    4000 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5E96BA69
P 4000 4650
F 0 "#PWR0107" H 4000 4400 50  0001 C CNN
F 1 "GND" H 4005 4477 50  0000 C CNN
F 2 "" H 4000 4650 50  0001 C CNN
F 3 "" H 4000 4650 50  0001 C CNN
	1    4000 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4650 4000 4600
Wire Wire Line
	4000 3950 4000 3900
$Comp
L Device:LED Growlight1
U 1 1 5E96CC9B
P 4800 4200
F 0 "Growlight1" H 4793 4416 50  0000 C CNN
F 1 "LED" H 4793 4325 50  0000 C CNN
F 2 "" H 4800 4200 50  0001 C CNN
F 3 "~" H 4800 4200 50  0001 C CNN
	1    4800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4200 4650 4200
$Comp
L power:+12V #PWR0108
U 1 1 5E96D6A5
P 5050 4200
F 0 "#PWR0108" H 5050 4050 50  0001 C CNN
F 1 "+12V" V 5065 4328 50  0000 L CNN
F 2 "" H 5050 4200 50  0001 C CNN
F 3 "" H 5050 4200 50  0001 C CNN
	1    5050 4200
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 4200 4950 4200
$Comp
L Motor:Motor_DC Pump1
U 1 1 5E96E256
P 4650 3500
F 0 "Pump1" V 4945 3450 50  0000 C CNN
F 1 "Motor_DC" V 4854 3450 50  0000 C CNN
F 2 "" H 4650 3410 50  0001 C CNN
F 3 "~" H 4650 3410 50  0001 C CNN
	1    4650 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0109
U 1 1 5E96EC26
P 5050 3500
F 0 "#PWR0109" H 5050 3350 50  0001 C CNN
F 1 "+12V" V 5065 3628 50  0000 L CNN
F 2 "" H 5050 3500 50  0001 C CNN
F 3 "" H 5050 3500 50  0001 C CNN
	1    5050 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	5050 3500 4950 3500
Wire Wire Line
	4450 3500 4000 3500
Wire Wire Line
	2500 3150 2500 2650
Wire Wire Line
	2500 2650 3550 2650
Wire Wire Line
	3550 2650 3550 2800
$Comp
L power:GND #PWR0110
U 1 1 5E9704EA
P 3500 3600
F 0 "#PWR0110" H 3500 3350 50  0001 C CNN
F 1 "GND" H 3505 3427 50  0000 C CNN
F 2 "" H 3500 3600 50  0001 C CNN
F 3 "" H 3500 3600 50  0001 C CNN
	1    3500 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3500 3500 3500
Wire Wire Line
	3500 3500 3500 3600
Connection ~ 3500 3500
Wire Wire Line
	3500 3500 3450 3500
$Comp
L power:GND #PWR0111
U 1 1 5E9710D6
P 3200 4400
F 0 "#PWR0111" H 3200 4150 50  0001 C CNN
F 1 "GND" H 3205 4227 50  0000 C CNN
F 2 "" H 3200 4400 50  0001 C CNN
F 3 "" H 3200 4400 50  0001 C CNN
	1    3200 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small_US R1
U 1 1 5E971AA5
P 3000 4150
F 0 "R1" H 3068 4196 50  0000 L CNN
F 1 "10k Ohm" H 3068 4105 50  0000 L CNN
F 2 "" H 3000 4150 50  0001 C CNN
F 3 "~" H 3000 4150 50  0001 C CNN
	1    3000 4150
	1    0    0    -1  
$EndComp
Connection ~ 3000 4050
Wire Wire Line
	3000 4050 3700 4050
$Comp
L Device:R_Small_US R2
U 1 1 5E973D23
P 3250 4050
F 0 "R2" H 3318 4096 50  0000 L CNN
F 1 "10k Ohm" H 3318 4005 50  0000 L CNN
F 2 "" H 3250 4050 50  0001 C CNN
F 3 "~" H 3250 4050 50  0001 C CNN
	1    3250 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4250 3000 4350
Wire Wire Line
	3000 4350 3200 4350
Wire Wire Line
	3200 4350 3200 4400
Wire Wire Line
	3250 4150 3250 4350
Wire Wire Line
	3250 4350 3200 4350
Connection ~ 3200 4350
$Comp
L dk_Display-Modules-LCD-OLED-Graphic:O128O032DWPP3N0000_Obsolete Display1
U 1 1 5E9756AB
P 2200 1450
F 0 "Display1" V 2331 1350 60  0000 C CNN
F 1 "SSD1306 128x32" V 2437 1350 60  0000 C CNN
F 2 "digikey-footprints:OLED_128x32_Folded" H 2400 1650 60  0001 L CNN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/Vishay%20Dale%20PDFs/O128O032DWPP3N00000.pdf" V 2400 1750 60  0001 L CNN
F 4 "541-3475-ND" H 2400 1850 60  0001 L CNN "Digi-Key_PN"
F 5 "O128O032DWPP3N0000" H 2400 1950 60  0001 L CNN "MPN"
F 6 "Optoelectronics" H 2400 2050 60  0001 L CNN "Category"
F 7 "Display Modules - LCD, OLED, Graphic" H 2400 2150 60  0001 L CNN "Family"
F 8 "https://media.digikey.com/pdf/Data%20Sheets/Vishay%20Dale%20PDFs/O128O032DWPP3N00000.pdf" H 2400 2250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/vishay-dale/O128O032DWPP3N0000/541-3475-ND/7041846" H 2400 2350 60  0001 L CNN "DK_Detail_Page"
F 10 "128X32 WHITE GRAPHIC (COG) OLED" H 2400 2450 60  0001 L CNN "Description"
F 11 "Vishay Dale" H 2400 2550 60  0001 L CNN "Manufacturer"
F 12 "Obsolete NonStock" H 2400 2650 60  0001 L CNN "Status"
	1    2200 1450
	0    -1   -1   0   
$EndComp
Connection ~ 3250 3950
Wire Wire Line
	3250 3950 3700 3950
$Comp
L power:+3.3V #PWR0112
U 1 1 5E98DFFA
P 1300 1550
F 0 "#PWR0112" H 1300 1400 50  0001 C CNN
F 1 "+3.3V" V 1315 1678 50  0000 L CNN
F 2 "" H 1300 1550 50  0001 C CNN
F 3 "" H 1300 1550 50  0001 C CNN
	1    1300 1550
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5E98E516
P 1300 1650
F 0 "#PWR0113" H 1300 1400 50  0001 C CNN
F 1 "GND" V 1305 1522 50  0000 R CNN
F 2 "" H 1300 1650 50  0001 C CNN
F 3 "" H 1300 1650 50  0001 C CNN
	1    1300 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	1300 1550 1400 1550
Wire Wire Line
	1300 1650 1400 1650
Wire Wire Line
	2500 2250 2500 2500
Wire Wire Line
	2500 2500 2900 2500
Wire Wire Line
	2900 2500 2900 3000
Connection ~ 2900 3000
Wire Wire Line
	2950 3100 2950 2450
Wire Wire Line
	2950 2450 2600 2450
Wire Wire Line
	2600 2450 2600 2250
Connection ~ 2950 3100
$EndSCHEMATC
