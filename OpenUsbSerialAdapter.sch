EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "OpenUsbSerialAdapter"
Date "2020-03-23"
Rev "1git"
Comp "SukkoPera"
Comment1 "Licensed under CERN OHL v.1.2"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Interface_USB:MCP2200-I-SO U1
U 1 1 5E1131A6
P 5775 3135
F 0 "U1" H 6490 3890 50  0000 C CNN
F 1 "MCP2200-I-SO" H 6260 2355 50  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 5775 1985 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/200022228D.pdf" H 5775 2135 50  0001 C CNN
	1    5775 3135
	1    0    0    -1  
$EndComp
NoConn ~ 4875 3235
NoConn ~ 4875 3335
NoConn ~ 4875 3435
NoConn ~ 4875 3535
Wire Wire Line
	5775 3935 5775 4020
$Comp
L power:GND #PWR03
U 1 1 5E1145FD
P 5775 4020
F 0 "#PWR03" H 5775 3770 50  0001 C CNN
F 1 "GND" H 5780 3847 50  0000 C CNN
F 2 "" H 5775 4020 50  0001 C CNN
F 3 "" H 5775 4020 50  0001 C CNN
	1    5775 4020
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_A J1
U 1 1 5E114D20
P 1580 3085
F 0 "J1" H 1637 3552 50  0000 C CNN
F 1 "USB_A" H 1637 3461 50  0000 C CNN
F 2 "OpenUsbSerialAdapter:USB_A_Molex_48037" H 1730 3035 50  0001 C CNN
F 3 " ~" H 1730 3035 50  0001 C CNN
	1    1580 3085
	1    0    0    -1  
$EndComp
Wire Wire Line
	1880 2885 2005 2885
Wire Wire Line
	2005 2885 2005 2755
$Comp
L power:+5V #PWR02
U 1 1 5E11696D
P 2005 2755
F 0 "#PWR02" H 2005 2605 50  0001 C CNN
F 1 "+5V" H 2020 2928 50  0000 C CNN
F 2 "" H 2005 2755 50  0001 C CNN
F 3 "" H 2005 2755 50  0001 C CNN
	1    2005 2755
	1    0    0    -1  
$EndComp
Wire Wire Line
	1580 3485 1580 3575
Wire Wire Line
	1580 3575 1530 3575
Wire Wire Line
	1480 3575 1480 3485
Wire Wire Line
	1530 3575 1530 3660
$Comp
L power:GND #PWR01
U 1 1 5E11769A
P 1530 3660
F 0 "#PWR01" H 1530 3410 50  0001 C CNN
F 1 "GND" H 1535 3487 50  0000 C CNN
F 2 "" H 1530 3660 50  0001 C CNN
F 3 "" H 1530 3660 50  0001 C CNN
	1    1530 3660
	1    0    0    -1  
$EndComp
Connection ~ 1530 3575
Wire Wire Line
	1530 3575 1480 3575
Wire Wire Line
	1880 3085 2090 3085
Wire Wire Line
	1880 3185 2090 3185
Text Label 2090 3085 2    50   ~ 0
usb+
Text Label 2090 3185 2    50   ~ 0
usb-
Wire Wire Line
	6675 2535 6885 2535
Wire Wire Line
	6675 2735 6885 2735
Text Label 6885 2535 2    50   ~ 0
usb+
Text Label 6885 2735 2    50   ~ 0
usb-
$Comp
L Connector:Conn_01x06_Female J2
U 1 1 5E118FA8
P 9285 3075
F 0 "J2" H 9313 3051 50  0000 L CNN
F 1 "FTDI" H 9313 2960 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 9285 3075 50  0001 C CNN
F 3 "~" H 9285 3075 50  0001 C CNN
	1    9285 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	9085 2875 8925 2875
Wire Wire Line
	9085 2975 8925 2975
Wire Wire Line
	9085 3075 8925 3075
Wire Wire Line
	9085 3275 8925 3275
$Comp
L Device:Crystal Y1
U 1 1 5E11ADF6
P 7110 3635
F 0 "Y1" V 7064 3766 50  0000 L CNN
F 1 "12M" V 7155 3766 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 7110 3635 50  0001 C CNN
F 3 "~" H 7110 3635 50  0001 C CNN
	1    7110 3635
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5E11BEDC
P 7715 3405
F 0 "C1" V 7463 3405 50  0000 C CNN
F 1 "22p" V 7554 3405 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7753 3255 50  0001 C CNN
F 3 "~" H 7715 3405 50  0001 C CNN
	1    7715 3405
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 5E11C985
P 7715 3875
F 0 "C2" V 7463 3875 50  0000 C CNN
F 1 "22p" V 7554 3875 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7753 3725 50  0001 C CNN
F 3 "~" H 7715 3875 50  0001 C CNN
	1    7715 3875
	0    1    1    0   
$EndComp
Wire Wire Line
	7110 3785 7110 3875
Wire Wire Line
	7110 3875 7565 3875
Wire Wire Line
	7110 3485 7110 3405
Wire Wire Line
	7110 3405 7565 3405
Wire Wire Line
	7865 3405 8170 3405
Wire Wire Line
	8170 3405 8170 3875
$Comp
L power:GND #PWR04
U 1 1 5E11DBF7
P 8170 4015
F 0 "#PWR04" H 8170 3765 50  0001 C CNN
F 1 "GND" H 8175 3842 50  0000 C CNN
F 2 "" H 8170 4015 50  0001 C CNN
F 3 "" H 8170 4015 50  0001 C CNN
	1    8170 4015
	1    0    0    -1  
$EndComp
Wire Wire Line
	7865 3875 8170 3875
Connection ~ 8170 3875
Wire Wire Line
	8170 3875 8170 4015
Wire Wire Line
	6675 3535 6850 3535
Wire Wire Line
	6850 3535 6850 3405
Wire Wire Line
	6850 3405 7110 3405
Connection ~ 7110 3405
Wire Wire Line
	6675 3735 6850 3735
Wire Wire Line
	6850 3735 6850 3875
Wire Wire Line
	6850 3875 7110 3875
Connection ~ 7110 3875
$Comp
L Device:LED LD2
U 1 1 5E11F7A3
P 4595 3635
F 0 "LD2" H 4588 3851 50  0000 C CNN
F 1 "LED_RX" H 4588 3760 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4595 3635 50  0001 C CNN
F 3 "~" H 4595 3635 50  0001 C CNN
	1    4595 3635
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED LD1
U 1 1 5E120B8E
P 4185 3735
F 0 "LD1" H 4178 3573 50  0000 C CNN
F 1 "LED_TX" H 4178 3482 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4185 3735 50  0001 C CNN
F 3 "~" H 4185 3735 50  0001 C CNN
	1    4185 3735
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4335 3735 4875 3735
Wire Wire Line
	4745 3635 4875 3635
$Comp
L Device:R R1
U 1 1 5E122474
P 3730 3735
F 0 "R1" V 3845 3735 50  0000 C CNN
F 1 "220" V 3936 3735 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3660 3735 50  0001 C CNN
F 3 "~" H 3730 3735 50  0001 C CNN
	1    3730 3735
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E123CB0
P 3950 3635
F 0 "R2" V 3743 3635 50  0000 C CNN
F 1 "220" V 3834 3635 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3880 3635 50  0001 C CNN
F 3 "~" H 3950 3635 50  0001 C CNN
	1    3950 3635
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3635 4445 3635
Wire Wire Line
	3880 3735 4035 3735
Wire Wire Line
	3800 3635 3415 3635
Wire Wire Line
	3415 3635 3415 3735
Wire Wire Line
	3580 3735 3415 3735
NoConn ~ 4875 3035
NoConn ~ 4875 3135
Wire Wire Line
	4125 2635 4325 2635
Text Label 3440 2635 0    50   ~ 0
rx
Text Label 3440 2735 0    50   ~ 0
tx
Wire Wire Line
	4295 2835 4875 2835
Text Label 4295 2835 0    50   ~ 0
~rts
Wire Wire Line
	4295 2935 4875 2935
Text Label 4295 2935 0    50   ~ 0
~cts
Text Label 8925 2875 0    50   ~ 0
~rts
Text Label 8925 2975 0    50   ~ 0
rx
Text Label 8925 3075 0    50   ~ 0
tx
Text Label 8925 3275 0    50   ~ 0
~cts
Wire Wire Line
	8790 2850 8790 3175
Wire Wire Line
	8790 3175 9085 3175
Wire Wire Line
	8790 3375 8790 3515
Wire Wire Line
	8790 3375 9085 3375
$Comp
L power:GND #PWR010
U 1 1 5E13062E
P 8790 3515
F 0 "#PWR010" H 8790 3265 50  0001 C CNN
F 1 "GND" H 8795 3342 50  0000 C CNN
F 2 "" H 8790 3515 50  0001 C CNN
F 3 "" H 8790 3515 50  0001 C CNN
	1    8790 3515
	1    0    0    -1  
$EndComp
Wire Wire Line
	3415 3635 3415 3345
Connection ~ 3415 3635
$Comp
L Device:R R5
U 1 1 5E1358AB
P 4325 1990
F 0 "R5" H 4430 2145 50  0000 R CNN
F 1 "10k" V 4325 2060 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4255 1990 50  0001 C CNN
F 3 "~" H 4325 1990 50  0001 C CNN
	1    4325 1990
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5E135F44
P 4495 1990
F 0 "R6" H 4505 2140 50  0000 L CNN
F 1 "10k" V 4495 1920 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4425 1990 50  0001 C CNN
F 3 "~" H 4495 1990 50  0001 C CNN
	1    4495 1990
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 2140 4325 2635
Connection ~ 4325 2635
Wire Wire Line
	4325 2635 4875 2635
Wire Wire Line
	4495 2140 4495 2735
Connection ~ 4495 2735
Wire Wire Line
	4325 1840 4325 1745
Wire Wire Line
	4495 1745 4495 1840
Text Notes 4250 2115 2    50   ~ 0
PULL-UPS FOR\nDATA LINES ARE\nOPTIONAL
$Comp
L Device:R R3
U 1 1 5E140668
P 3755 2735
F 0 "R3" V 3870 2735 50  0000 C CNN
F 1 "100" V 3961 2735 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3685 2735 50  0001 C CNN
F 3 "~" H 3755 2735 50  0001 C CNN
	1    3755 2735
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E140672
P 3975 2635
F 0 "R4" V 3768 2635 50  0000 C CNN
F 1 "100" V 3859 2635 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3905 2635 50  0001 C CNN
F 3 "~" H 3975 2635 50  0001 C CNN
	1    3975 2635
	0    1    1    0   
$EndComp
Wire Wire Line
	3825 2635 3440 2635
Wire Wire Line
	3605 2735 3440 2735
Wire Wire Line
	3905 2735 4495 2735
Text Notes 3840 2495 2    50   ~ 0
RESISTORS PROTECTING\nINVERSION OF RX AND TX
$Comp
L Device:R R7
U 1 1 5E1487AC
P 4665 1990
F 0 "R7" H 4675 2140 50  0000 L CNN
F 1 "10k" V 4665 1920 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4595 1990 50  0001 C CNN
F 3 "~" H 4665 1990 50  0001 C CNN
	1    4665 1990
	1    0    0    -1  
$EndComp
Wire Wire Line
	4665 2140 4665 2535
Wire Wire Line
	4875 2535 4665 2535
Wire Wire Line
	4495 2735 4875 2735
Wire Wire Line
	4495 1745 4665 1745
Wire Wire Line
	4665 1745 4665 1840
Connection ~ 4495 1745
Wire Wire Line
	4495 1745 4495 1645
Wire Wire Line
	4325 1745 4495 1745
Text Notes 4800 2150 0    50   ~ 0
PULL-UP FOR\nRESET LINE IS\nMANDATORY\n(1k-10k)
$Comp
L Device:C C3
U 1 1 5E152A25
P 7345 2500
F 0 "C3" H 7460 2546 50  0000 L CNN
F 1 "330n" H 7460 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7383 2350 50  0001 C CNN
F 3 "~" H 7345 2500 50  0001 C CNN
	1    7345 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5875 2335 5875 2205
Wire Wire Line
	5875 2205 6825 2205
$Comp
L power:GND #PWR08
U 1 1 5E154C78
P 7345 2700
F 0 "#PWR08" H 7345 2450 50  0001 C CNN
F 1 "GND" H 7350 2527 50  0000 C CNN
F 2 "" H 7345 2700 50  0001 C CNN
F 3 "" H 7345 2700 50  0001 C CNN
	1    7345 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7345 2650 7345 2700
Text Notes 7715 2575 0    50   ~ 0
USE CERAMIC CAP\n220n-470nF
Wire Wire Line
	5675 2335 5675 2080
$Comp
L power:+5V #PWR0101
U 1 1 5E15A5B5
P 10780 885
F 0 "#PWR0101" H 10780 735 50  0001 C CNN
F 1 "+5V" H 10795 1058 50  0000 C CNN
F 2 "" H 10780 885 50  0001 C CNN
F 3 "" H 10780 885 50  0001 C CNN
	1    10780 885 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5E15AD0C
P 10445 1090
F 0 "#PWR0102" H 10445 840 50  0001 C CNN
F 1 "GND" H 10450 917 50  0000 C CNN
F 2 "" H 10445 1090 50  0001 C CNN
F 3 "" H 10445 1090 50  0001 C CNN
	1    10445 1090
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E15B452
P 10445 885
F 0 "#FLG0101" H 10445 960 50  0001 C CNN
F 1 "PWR_FLAG" H 10445 1058 50  0000 C CNN
F 2 "" H 10445 885 50  0001 C CNN
F 3 "~" H 10445 885 50  0001 C CNN
	1    10445 885 
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E15BE7B
P 10780 1090
F 0 "#FLG0102" H 10780 1165 50  0001 C CNN
F 1 "PWR_FLAG" H 10780 1263 50  0000 C CNN
F 2 "" H 10780 1090 50  0001 C CNN
F 3 "~" H 10780 1090 50  0001 C CNN
	1    10780 1090
	-1   0    0    1   
$EndComp
Wire Wire Line
	10780 1090 10780 885 
Wire Wire Line
	10445 885  10445 1090
Wire Wire Line
	2680 3030 2680 2930
Wire Wire Line
	2680 3330 2680 3415
$Comp
L power:GND #PWR0104
U 1 1 5E16F27E
P 2680 3415
F 0 "#PWR0104" H 2680 3165 50  0001 C CNN
F 1 "GND" H 2685 3242 50  0000 C CNN
F 2 "" H 2680 3415 50  0001 C CNN
F 3 "" H 2680 3415 50  0001 C CNN
	1    2680 3415
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5460 4425 5460
Wire Wire Line
	5770 5460 5480 5460
$Comp
L Device:CP1 C6
U 1 1 5E1ABDD4
P 5480 5760
F 0 "C6" H 5595 5806 50  0000 L CNN
F 1 "10u" H 5595 5715 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 5480 5760 50  0001 C CNN
F 3 "~" H 5480 5760 50  0001 C CNN
	1    5480 5760
	1    0    0    -1  
$EndComp
$Comp
L Device:CP1 C5
U 1 1 5E1ACE17
P 4425 5760
F 0 "C5" H 4540 5806 50  0000 L CNN
F 1 "10u" H 4540 5715 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 4425 5760 50  0001 C CNN
F 3 "~" H 4425 5760 50  0001 C CNN
	1    4425 5760
	1    0    0    -1  
$EndComp
Wire Wire Line
	4425 5910 4425 6180
Wire Wire Line
	4425 6180 4950 6180
Wire Wire Line
	5480 6180 5480 5910
Wire Wire Line
	4950 5760 4950 6180
$Comp
L power:GND #PWR012
U 1 1 5E1B4E9D
P 4950 6275
F 0 "#PWR012" H 4950 6025 50  0001 C CNN
F 1 "GND" H 4955 6102 50  0000 C CNN
F 2 "" H 4950 6275 50  0001 C CNN
F 3 "" H 4950 6275 50  0001 C CNN
	1    4950 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	4425 5610 4425 5460
Connection ~ 4425 5460
Wire Wire Line
	5480 5610 5480 5460
Connection ~ 5480 5460
Wire Wire Line
	5480 5460 5250 5460
$Comp
L power:+5V #PWR011
U 1 1 5E1B9278
P 4135 5300
F 0 "#PWR011" H 4135 5150 50  0001 C CNN
F 1 "+5V" H 4150 5473 50  0000 C CNN
F 2 "" H 4135 5300 50  0001 C CNN
F 3 "" H 4135 5300 50  0001 C CNN
	1    4135 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4135 5300 4135 5460
Wire Wire Line
	4135 5460 4425 5460
$Comp
L power:+3.3V #PWR013
U 1 1 5E1BFD6D
P 5770 5300
F 0 "#PWR013" H 5770 5150 50  0001 C CNN
F 1 "+3.3V" H 5785 5473 50  0000 C CNN
F 2 "" H 5770 5300 50  0001 C CNN
F 3 "" H 5770 5300 50  0001 C CNN
	1    5770 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5770 5300 5770 5460
$Comp
L Switch:SW_DPDT_x2 SW1
U 1 1 5E1CA93B
P 6880 5390
F 0 "SW1" H 6880 5675 50  0000 C CNN
F 1 "SW_DPDT_x2" H 6880 5584 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CuK_JS202011CQN_DPDT_Straight" H 6880 5390 50  0001 C CNN
F 3 "~" H 6880 5390 50  0001 C CNN
	1    6880 5390
	-1   0    0    -1  
$EndComp
$Comp
L Switch:SW_DPDT_x2 SW1
U 2 1 5E1CB27F
P 7025 2205
F 0 "SW1" H 7025 1880 50  0000 C CNN
F 1 "SW_DPDT_x2" H 7025 1971 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CuK_JS202011CQN_DPDT_Straight" H 7025 2205 50  0001 C CNN
F 3 "~" H 7025 2205 50  0001 C CNN
	2    7025 2205
	1    0    0    1   
$EndComp
Wire Wire Line
	6680 5290 6490 5290
Wire Wire Line
	6490 5290 6490 5225
Wire Wire Line
	6680 5490 6290 5490
Wire Wire Line
	6290 5490 6290 5225
$Comp
L power:+3.3V #PWR09
U 1 1 5E1D48D0
P 6290 5225
F 0 "#PWR09" H 6290 5075 50  0001 C CNN
F 1 "+3.3V" H 6305 5398 50  0000 C CNN
F 2 "" H 6290 5225 50  0001 C CNN
F 3 "" H 6290 5225 50  0001 C CNN
	1    6290 5225
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 5E1D5152
P 6490 5225
F 0 "#PWR014" H 6490 5075 50  0001 C CNN
F 1 "+5V" H 6505 5398 50  0000 C CNN
F 2 "" H 6490 5225 50  0001 C CNN
F 3 "" H 6490 5225 50  0001 C CNN
	1    6490 5225
	1    0    0    -1  
$EndComp
Wire Wire Line
	7080 5390 7305 5390
Wire Wire Line
	7305 5390 7305 5300
$Comp
L power:VCC #PWR015
U 1 1 5E1D8383
P 7305 5300
F 0 "#PWR015" H 7305 5150 50  0001 C CNN
F 1 "VCC" H 7322 5473 50  0000 C CNN
F 2 "" H 7305 5300 50  0001 C CNN
F 3 "" H 7305 5300 50  0001 C CNN
	1    7305 5300
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR05
U 1 1 5E1DB3FB
P 3415 3345
F 0 "#PWR05" H 3415 3195 50  0001 C CNN
F 1 "VCC" H 3432 3518 50  0000 C CNN
F 2 "" H 3415 3345 50  0001 C CNN
F 3 "" H 3415 3345 50  0001 C CNN
	1    3415 3345
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 5E1DE5DA
P 4495 1645
F 0 "#PWR06" H 4495 1495 50  0001 C CNN
F 1 "VCC" H 4512 1818 50  0000 C CNN
F 2 "" H 4495 1645 50  0001 C CNN
F 3 "" H 4495 1645 50  0001 C CNN
	1    4495 1645
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR07
U 1 1 5E1E14F1
P 5675 2080
F 0 "#PWR07" H 5675 1930 50  0001 C CNN
F 1 "VCC" H 5692 2253 50  0000 C CNN
F 2 "" H 5675 2080 50  0001 C CNN
F 3 "" H 5675 2080 50  0001 C CNN
	1    5675 2080
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR017
U 1 1 5E1E212F
P 8790 2850
F 0 "#PWR017" H 8790 2700 50  0001 C CNN
F 1 "VCC" H 8807 3023 50  0000 C CNN
F 2 "" H 8790 2850 50  0001 C CNN
F 3 "" H 8790 2850 50  0001 C CNN
	1    8790 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7225 2305 7345 2305
Wire Wire Line
	7345 2305 7345 2350
Wire Wire Line
	7225 2105 7345 2105
Wire Wire Line
	7345 2105 7345 1930
$Comp
L power:+3.3V #PWR016
U 1 1 5E1F4B16
P 7345 1930
F 0 "#PWR016" H 7345 1780 50  0001 C CNN
F 1 "+3.3V" H 7360 2103 50  0000 C CNN
F 2 "" H 7345 1930 50  0001 C CNN
F 3 "" H 7345 1930 50  0001 C CNN
	1    7345 1930
	1    0    0    -1  
$EndComp
Text Notes 5820 1775 0    50   ~ 0
When MCP2200 is powered at 5V,\nit needs a bypass capacitor on\nthe Vusb pin.\n\nWhen powered at 3.3V, connecting\nVusb to 3.3V will disable the\ninternal LDO.
$Comp
L Regulator_Linear:AMS1117-3.3 U2
U 1 1 5E20543F
P 4950 5460
F 0 "U2" H 4950 5702 50  0000 C CNN
F 1 "AMS1117-3.3" H 4950 5611 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 4950 5660 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 5050 5210 50  0001 C CNN
	1    4950 5460
	1    0    0    -1  
$EndComp
Connection ~ 4950 6180
Wire Wire Line
	4950 6180 5480 6180
Wire Wire Line
	4950 6180 4950 6275
$Comp
L power:VCC #PWR0103
U 1 1 5EE1C505
P 2680 2930
F 0 "#PWR0103" H 2680 2780 50  0001 C CNN
F 1 "VCC" H 2697 3103 50  0000 C CNN
F 2 "" H 2680 2930 50  0001 C CNN
F 3 "" H 2680 2930 50  0001 C CNN
	1    2680 2930
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5EE1F7D3
P 2680 3180
F 0 "C4" H 2795 3226 50  0000 L CNN
F 1 "100n" H 2795 3135 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2718 3030 50  0001 C CNN
F 3 "~" H 2680 3180 50  0001 C CNN
	1    2680 3180
	1    0    0    -1  
$EndComp
$EndSCHEMATC
