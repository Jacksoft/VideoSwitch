
_DecToBin:

;VideoSwitch.mbas,37 :: 		DIM tmpport AS STRING[3]
	MOVF       R0+0, 0
	MOVWF      DecToBin_local_result+0
;VideoSwitch.mbas,39 :: 		CASE 1
	MOVF       FARG_DecToBin_decin+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L__DecToBin4
;VideoSwitch.mbas,40 :: 		tmpport = "000"
	MOVLW      48
	MOVWF      DecToBin_tmpport+0
	MOVLW      48
	MOVWF      DecToBin_tmpport+1
	MOVLW      48
	MOVWF      DecToBin_tmpport+2
	CLRF       DecToBin_tmpport+3
	GOTO       L__DecToBin1
L__DecToBin4:
;VideoSwitch.mbas,41 :: 		CASE 2
	MOVF       FARG_DecToBin_decin+0, 0
	XORLW      2
	BTFSS      STATUS+0, 2
	GOTO       L__DecToBin7
;VideoSwitch.mbas,42 :: 		tmpport = "001"
	MOVLW      48
	MOVWF      DecToBin_tmpport+0
	MOVLW      48
	MOVWF      DecToBin_tmpport+1
	MOVLW      49
	MOVWF      DecToBin_tmpport+2
	CLRF       DecToBin_tmpport+3
	GOTO       L__DecToBin1
L__DecToBin7:
;VideoSwitch.mbas,43 :: 		CASE 3
	MOVF       FARG_DecToBin_decin+0, 0
	XORLW      3
	BTFSS      STATUS+0, 2
	GOTO       L__DecToBin10
;VideoSwitch.mbas,44 :: 		tmpport = "010"
	MOVLW      48
	MOVWF      DecToBin_tmpport+0
	MOVLW      49
	MOVWF      DecToBin_tmpport+1
	MOVLW      48
	MOVWF      DecToBin_tmpport+2
	CLRF       DecToBin_tmpport+3
	GOTO       L__DecToBin1
L__DecToBin10:
;VideoSwitch.mbas,45 :: 		CASE 4
	MOVF       FARG_DecToBin_decin+0, 0
	XORLW      4
	BTFSS      STATUS+0, 2
	GOTO       L__DecToBin13
;VideoSwitch.mbas,46 :: 		tmpport = "011"
	MOVLW      48
	MOVWF      DecToBin_tmpport+0
	MOVLW      49
	MOVWF      DecToBin_tmpport+1
	MOVLW      49
	MOVWF      DecToBin_tmpport+2
	CLRF       DecToBin_tmpport+3
	GOTO       L__DecToBin1
L__DecToBin13:
;VideoSwitch.mbas,47 :: 		CASE 5
	MOVF       FARG_DecToBin_decin+0, 0
	XORLW      5
	BTFSS      STATUS+0, 2
	GOTO       L__DecToBin16
;VideoSwitch.mbas,48 :: 		tmpport = "100"
	MOVLW      49
	MOVWF      DecToBin_tmpport+0
	MOVLW      48
	MOVWF      DecToBin_tmpport+1
	MOVLW      48
	MOVWF      DecToBin_tmpport+2
	CLRF       DecToBin_tmpport+3
	GOTO       L__DecToBin1
L__DecToBin16:
;VideoSwitch.mbas,49 :: 		CASE 6
	MOVF       FARG_DecToBin_decin+0, 0
	XORLW      6
	BTFSS      STATUS+0, 2
	GOTO       L__DecToBin19
;VideoSwitch.mbas,50 :: 		tmpport = "101"
	MOVLW      49
	MOVWF      DecToBin_tmpport+0
	MOVLW      48
	MOVWF      DecToBin_tmpport+1
	MOVLW      49
	MOVWF      DecToBin_tmpport+2
	CLRF       DecToBin_tmpport+3
	GOTO       L__DecToBin1
L__DecToBin19:
;VideoSwitch.mbas,51 :: 		CASE 7
	MOVF       FARG_DecToBin_decin+0, 0
	XORLW      7
	BTFSS      STATUS+0, 2
	GOTO       L__DecToBin22
;VideoSwitch.mbas,52 :: 		tmpport = "110"
	MOVLW      49
	MOVWF      DecToBin_tmpport+0
	MOVLW      49
	MOVWF      DecToBin_tmpport+1
	MOVLW      48
	MOVWF      DecToBin_tmpport+2
	CLRF       DecToBin_tmpport+3
	GOTO       L__DecToBin1
L__DecToBin22:
;VideoSwitch.mbas,53 :: 		CASE 8
	MOVF       FARG_DecToBin_decin+0, 0
	XORLW      8
	BTFSS      STATUS+0, 2
	GOTO       L__DecToBin25
;VideoSwitch.mbas,54 :: 		tmpport = "111"
	MOVLW      49
	MOVWF      DecToBin_tmpport+0
	MOVLW      49
	MOVWF      DecToBin_tmpport+1
	MOVLW      49
	MOVWF      DecToBin_tmpport+2
	CLRF       DecToBin_tmpport+3
	GOTO       L__DecToBin1
L__DecToBin25:
L__DecToBin1:
;VideoSwitch.mbas,56 :: 		result = tmpport
	MOVF       DecToBin_local_result+0, 0
	MOVWF      FSR
	MOVLW      DecToBin_tmpport+0
	MOVWF      R1+0
	CALL       ___CS2S+0
	CLRF       INDF+0
;VideoSwitch.mbas,57 :: 		END SUB
L_end_DecToBin:
	RETURN
; end of _DecToBin

_main:

;VideoSwitch.mbas,59 :: 		MAIN:
;VideoSwitch.mbas,61 :: 		ADCON0 = 0
	CLRF       ADCON0+0
;VideoSwitch.mbas,62 :: 		ADCON1 = 0
	CLRF       ADCON1+0
;VideoSwitch.mbas,63 :: 		ANSEL = 0
	CLRF       ANSEL+0
;VideoSwitch.mbas,64 :: 		ANSELH = 0
	CLRF       ANSELH+0
;VideoSwitch.mbas,65 :: 		CCP1CON = 0
	CLRF       CCP1CON+0
;VideoSwitch.mbas,66 :: 		CCP2CON = 0
	CLRF       CCP2CON+0
;VideoSwitch.mbas,72 :: 		TRISA = 0xC0                   ' 1100 0000
	MOVLW      192
	MOVWF      TRISA+0
;VideoSwitch.mbas,73 :: 		PORTA = 0x38                   ' 0011 1000
	MOVLW      56
	MOVWF      PORTA+0
;VideoSwitch.mbas,74 :: 		TRISB = 0x07                   ' 0000 0111
	MOVLW      7
	MOVWF      TRISB+0
;VideoSwitch.mbas,75 :: 		PORTB = 0x00                   ' 0000 0000
	CLRF       PORTB+0
;VideoSwitch.mbas,76 :: 		TRISC = 0x00                   ' 0000 0000
	CLRF       TRISC+0
;VideoSwitch.mbas,77 :: 		PORTC = 0x7F                   ' 0111 1111
	MOVLW      127
	MOVWF      PORTC+0
;VideoSwitch.mbas,80 :: 		Line1 = "JACKSOFT"
	MOVLW      74
	MOVWF      _Line1+0
	MOVLW      65
	MOVWF      _Line1+1
	MOVLW      67
	MOVWF      _Line1+2
	MOVLW      75
	MOVWF      _Line1+3
	MOVLW      83
	MOVWF      _Line1+4
	MOVLW      79
	MOVWF      _Line1+5
	MOVLW      70
	MOVWF      _Line1+6
	MOVLW      84
	MOVWF      _Line1+7
	CLRF       _Line1+8
;VideoSwitch.mbas,81 :: 		Line2 = "  LABS  "
	MOVLW      32
	MOVWF      _Line2+0
	MOVLW      32
	MOVWF      _Line2+1
	MOVLW      76
	MOVWF      _Line2+2
	MOVLW      65
	MOVWF      _Line2+3
	MOVLW      66
	MOVWF      _Line2+4
	MOVLW      83
	MOVWF      _Line2+5
	MOVLW      32
	MOVWF      _Line2+6
	MOVLW      32
	MOVWF      _Line2+7
	CLRF       _Line2+8
;VideoSwitch.mbas,83 :: 		Lcd_Init()                     ' Initialize LCD (I'm using an 8x2)
	CALL       _Lcd_Init+0
;VideoSwitch.mbas,84 :: 		Lcd_Cmd(_LCD_CLEAR)            ' Clear Screen
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;VideoSwitch.mbas,85 :: 		Lcd_Cmd(_LCD_CURSOR_OFF)       ' Cursor Off (_)
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;VideoSwitch.mbas,86 :: 		Lcd_Out(1,1,Line1)             ' Send the first row to the display
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _Line1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;VideoSwitch.mbas,87 :: 		Lcd_Out(2,1,Line2)             ' Send the second row to the display
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _Line2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;VideoSwitch.mbas,89 :: 		PORTC.6 = 1                    ' Power-on the backlight
	BSF        PORTC+0, 6
;VideoSwitch.mbas,91 :: 		Delay_ms(50)
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L__main27:
	DECFSZ     R13+0, 1
	GOTO       L__main27
	DECFSZ     R12+0, 1
	GOTO       L__main27
	NOP
	NOP
;VideoSwitch.mbas,93 :: 		MaxSwitches = 8
	MOVLW      8
	MOVWF      _MaxSwitches+0
;VideoSwitch.mbas,94 :: 		IF ((PORTB.1 = 1) AND (PORTB.2 = 0)) THEN
	BTFSC      PORTB+0, 1
	GOTO       L__main82
	BCF        114, 0
	GOTO       L__main83
L__main82:
	BSF        114, 0
L__main83:
	BTFSC      PORTB+0, 2
	GOTO       L__main84
	BSF        3, 0
	GOTO       L__main85
L__main84:
	BCF        3, 0
L__main85:
	BTFSS      114, 0
	GOTO       L__main86
	BTFSS      3, 0
	GOTO       L__main86
	BSF        114, 0
	GOTO       L__main87
L__main86:
	BCF        114, 0
L__main87:
	BTFSS      114, 0
	GOTO       L__main29
;VideoSwitch.mbas,95 :: 		MaxSwitches = 16
	MOVLW      16
	MOVWF      _MaxSwitches+0
L__main29:
;VideoSwitch.mbas,97 :: 		IF ((PORTB.1 = 1) AND (PORTB.2 = 1)) THEN
	BTFSC      PORTB+0, 1
	GOTO       L__main88
	BCF        114, 0
	GOTO       L__main89
L__main88:
	BSF        114, 0
L__main89:
	BTFSC      PORTB+0, 2
	GOTO       L__main90
	BCF        3, 0
	GOTO       L__main91
L__main90:
	BSF        3, 0
L__main91:
	BTFSS      114, 0
	GOTO       L__main92
	BTFSS      3, 0
	GOTO       L__main92
	BSF        114, 0
	GOTO       L__main93
L__main92:
	BCF        114, 0
L__main93:
	BTFSS      114, 0
	GOTO       L__main32
;VideoSwitch.mbas,98 :: 		MaxSwitches = 24
	MOVLW      24
	MOVWF      _MaxSwitches+0
L__main32:
;VideoSwitch.mbas,102 :: 		IF (EEProm_Read(0x00) = 0xFF) THEN
	CLRF       FARG_EEPROM_Read_address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	XORLW      255
	BTFSS      STATUS+0, 2
	GOTO       L__main35
;VideoSwitch.mbas,103 :: 		Delay_ms(50)
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L__main37:
	DECFSZ     R13+0, 1
	GOTO       L__main37
	DECFSZ     R12+0, 1
	GOTO       L__main37
	NOP
	NOP
;VideoSwitch.mbas,104 :: 		EEProm_Write(0x00, 1)
	CLRF       FARG_EEPROM_Write_address+0
	MOVLW      1
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
L__main35:
;VideoSwitch.mbas,106 :: 		Delay_ms(50)
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L__main38:
	DECFSZ     R13+0, 1
	GOTO       L__main38
	DECFSZ     R12+0, 1
	GOTO       L__main38
	NOP
	NOP
;VideoSwitch.mbas,107 :: 		IF (EEProm_Read(0x00) <= MaxSwitches) THEN
	CLRF       FARG_EEPROM_Read_address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	SUBWF      _MaxSwitches+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L__main40
;VideoSwitch.mbas,108 :: 		VideoPort = EEProm_Read(0x00)
	CLRF       FARG_EEPROM_Read_address+0
	CALL       _EEPROM_Read+0
	MOVF       R0+0, 0
	MOVWF      _VideoPort+0
	GOTO       L__main41
;VideoSwitch.mbas,109 :: 		ELSE
L__main40:
;VideoSwitch.mbas,110 :: 		VideoPort = 1
	MOVLW      1
	MOVWF      _VideoPort+0
;VideoSwitch.mbas,111 :: 		Delay_ms(50)
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L__main42:
	DECFSZ     R13+0, 1
	GOTO       L__main42
	DECFSZ     R12+0, 1
	GOTO       L__main42
	NOP
	NOP
;VideoSwitch.mbas,112 :: 		EEProm_Write(0x00, VideoPort)
	CLRF       FARG_EEPROM_Write_address+0
	MOVF       _VideoPort+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
;VideoSwitch.mbas,113 :: 		END IF
L__main41:
;VideoSwitch.mbas,116 :: 		LCDBackCycle = 0
	CLRF       _LCDBackCycle+0
;VideoSwitch.mbas,117 :: 		LCDBackCycleMax = 20           ' *100ms
	MOVLW      20
	MOVWF      _LCDBackCycleMax+0
;VideoSwitch.mbas,119 :: 		Delay_ms(1000)
	MOVLW      11
	MOVWF      R11+0
	MOVLW      38
	MOVWF      R12+0
	MOVLW      93
	MOVWF      R13+0
L__main43:
	DECFSZ     R13+0, 1
	GOTO       L__main43
	DECFSZ     R12+0, 1
	GOTO       L__main43
	DECFSZ     R11+0, 1
	GOTO       L__main43
	NOP
	NOP
;VideoSwitch.mbas,120 :: 		Lcd_Cmd(_LCD_CLEAR)
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;VideoSwitch.mbas,122 :: 		Line1 = " VIDEO  "
	MOVLW      32
	MOVWF      _Line1+0
	MOVLW      86
	MOVWF      _Line1+1
	MOVLW      73
	MOVWF      _Line1+2
	MOVLW      68
	MOVWF      _Line1+3
	MOVLW      69
	MOVWF      _Line1+4
	MOVLW      79
	MOVWF      _Line1+5
	MOVLW      32
	MOVWF      _Line1+6
	MOVLW      32
	MOVWF      _Line1+7
	CLRF       _Line1+8
;VideoSwitch.mbas,123 :: 		Line2 = " SWITCH "
	MOVLW      32
	MOVWF      _Line2+0
	MOVLW      83
	MOVWF      _Line2+1
	MOVLW      87
	MOVWF      _Line2+2
	MOVLW      73
	MOVWF      _Line2+3
	MOVLW      84
	MOVWF      _Line2+4
	MOVLW      67
	MOVWF      _Line2+5
	MOVLW      72
	MOVWF      _Line2+6
	MOVLW      32
	MOVWF      _Line2+7
	CLRF       _Line2+8
;VideoSwitch.mbas,124 :: 		Lcd_Out(1,1,Line1)
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _Line1+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;VideoSwitch.mbas,125 :: 		Lcd_Out(2,1,Line2)
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _Line2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;VideoSwitch.mbas,127 :: 		WHILE (TRUE)
L__main45:
;VideoSwitch.mbas,129 :: 		IF Button(PORTA,6,1,1) THEN
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      6
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time+0
	MOVLW      1
	MOVWF      FARG_Button_activeState+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L__main50
;VideoSwitch.mbas,130 :: 		IF (VideoPort < MaxSwitches) THEN
	MOVF       _MaxSwitches+0, 0
	SUBWF      _VideoPort+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L__main53
;VideoSwitch.mbas,131 :: 		Inc(VideoPort)
	INCF       _VideoPort+0, 1
;VideoSwitch.mbas,132 :: 		EEProm_Write(0x00, VideoPort)
	CLRF       FARG_EEPROM_Write_address+0
	MOVF       _VideoPort+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
L__main53:
;VideoSwitch.mbas,134 :: 		LCDBackCycle = 0
	CLRF       _LCDBackCycle+0
;VideoSwitch.mbas,135 :: 		PORTC.6 = 1
	BSF        PORTC+0, 6
;VideoSwitch.mbas,136 :: 		Delay_ms(300)
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L__main55:
	DECFSZ     R13+0, 1
	GOTO       L__main55
	DECFSZ     R12+0, 1
	GOTO       L__main55
	DECFSZ     R11+0, 1
	GOTO       L__main55
	NOP
	NOP
L__main50:
;VideoSwitch.mbas,138 :: 		IF Button(PORTA,7,1,1) THEN
	MOVLW      PORTA+0
	MOVWF      FARG_Button_port+0
	MOVLW      7
	MOVWF      FARG_Button_pin+0
	MOVLW      1
	MOVWF      FARG_Button_time+0
	MOVLW      1
	MOVWF      FARG_Button_activeState+0
	CALL       _Button+0
	MOVF       R0+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L__main57
;VideoSwitch.mbas,139 :: 		IF (VideoPort > 1) THEN
	MOVF       _VideoPort+0, 0
	SUBLW      1
	BTFSC      STATUS+0, 0
	GOTO       L__main60
;VideoSwitch.mbas,140 :: 		Dec(VideoPort)
	DECF       _VideoPort+0, 1
;VideoSwitch.mbas,141 :: 		EEProm_Write(0x00, VideoPort)
	CLRF       FARG_EEPROM_Write_address+0
	MOVF       _VideoPort+0, 0
	MOVWF      FARG_EEPROM_Write_data_+0
	CALL       _EEPROM_Write+0
L__main60:
;VideoSwitch.mbas,143 :: 		LCDBackCycle = 0
	CLRF       _LCDBackCycle+0
;VideoSwitch.mbas,144 :: 		PORTC.6 = 1
	BSF        PORTC+0, 6
;VideoSwitch.mbas,145 :: 		Delay_ms(300)
	MOVLW      4
	MOVWF      R11+0
	MOVLW      12
	MOVWF      R12+0
	MOVLW      51
	MOVWF      R13+0
L__main62:
	DECFSZ     R13+0, 1
	GOTO       L__main62
	DECFSZ     R12+0, 1
	GOTO       L__main62
	DECFSZ     R11+0, 1
	GOTO       L__main62
	NOP
	NOP
L__main57:
;VideoSwitch.mbas,149 :: 		IF (VideoPort <> VideoPortOld) THEN
	MOVF       _VideoPort+0, 0
	XORWF      _VideoPortOld+0, 0
	BTFSC      STATUS+0, 2
	GOTO       L__main64
;VideoSwitch.mbas,150 :: 		VideoPortOld = VideoPort
	MOVF       _VideoPort+0, 0
	MOVWF      _VideoPortOld+0
;VideoSwitch.mbas,151 :: 		ByteToStr(VideoPort, VideoPortStr)
	MOVF       _VideoPort+0, 0
	MOVWF      FARG_ByteToStr_input+0
	MOVLW      _VideoPortStr+0
	MOVWF      FARG_ByteToStr_output+0
	CALL       _ByteToStr+0
;VideoSwitch.mbas,152 :: 		Line2 = "INPUT" + VideoPortStr
	MOVLW      _Line2+0
	MOVWF      FSR
	MOVLW      73
	MOVWF      INDF+0
	INCF       FSR, 1
	MOVLW      78
	MOVWF      INDF+0
	INCF       FSR, 1
	MOVLW      80
	MOVWF      INDF+0
	INCF       FSR, 1
	MOVLW      85
	MOVWF      INDF+0
	INCF       FSR, 1
	MOVLW      84
	MOVWF      INDF+0
	INCF       FSR, 1
	MOVLW      _VideoPortStr+0
	MOVWF      R1+0
	CALL       ___CS2S+0
	CLRF       INDF+0
;VideoSwitch.mbas,153 :: 		Lcd_Out(2,1,Line2)
	MOVLW      2
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      _Line2+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;VideoSwitch.mbas,155 :: 		IF (VideoPort <= 8) THEN
	MOVF       _VideoPort+0, 0
	SUBLW      8
	BTFSS      STATUS+0, 0
	GOTO       L__main67
;VideoSwitch.mbas,156 :: 		VideoPortCount = VideoPort
	MOVF       _VideoPort+0, 0
	MOVWF      _VideoPortCount+0
;VideoSwitch.mbas,157 :: 		PORTA.3 = 0
	BCF        PORTA+0, 3
;VideoSwitch.mbas,158 :: 		PORTA.4 = 1
	BSF        PORTA+0, 4
;VideoSwitch.mbas,159 :: 		PORTA.5 = 1
	BSF        PORTA+0, 5
L__main67:
;VideoSwitch.mbas,161 :: 		IF (VideoPort >= 9) THEN
	MOVLW      9
	SUBWF      _VideoPort+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L__main70
;VideoSwitch.mbas,162 :: 		VideoPortCount = VideoPort - 8
	MOVLW      8
	SUBWF      _VideoPort+0, 0
	MOVWF      _VideoPortCount+0
;VideoSwitch.mbas,163 :: 		PORTA.3 = 1
	BSF        PORTA+0, 3
;VideoSwitch.mbas,164 :: 		PORTA.4 = 0
	BCF        PORTA+0, 4
;VideoSwitch.mbas,165 :: 		PORTA.5 = 1
	BSF        PORTA+0, 5
L__main70:
;VideoSwitch.mbas,167 :: 		IF (VideoPort >= 17) THEN
	MOVLW      17
	SUBWF      _VideoPort+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L__main73
;VideoSwitch.mbas,168 :: 		VideoPortCount = VideoPort - 16
	MOVLW      16
	SUBWF      _VideoPort+0, 0
	MOVWF      _VideoPortCount+0
;VideoSwitch.mbas,169 :: 		PORTA.3 = 1
	BSF        PORTA+0, 3
;VideoSwitch.mbas,170 :: 		PORTA.4 = 1
	BSF        PORTA+0, 4
;VideoSwitch.mbas,171 :: 		PORTA.5 = 0
	BCF        PORTA+0, 5
L__main73:
;VideoSwitch.mbas,174 :: 		PortsBits = DecToBin(VideoPortCount)
	MOVF       _VideoPortCount+0, 0
	MOVWF      FARG_DecToBin_decin+0
	MOVLW      FLOC__main+0
	MOVWF      R0+0
	CALL       _DecToBin+0
	MOVLW      _PortsBits+0
	MOVWF      FSR
	MOVLW      FLOC__main+0
	MOVWF      R1+0
	CALL       ___CS2S+0
	CLRF       INDF+0
;VideoSwitch.mbas,175 :: 		Delay_ms(20)
	MOVLW      52
	MOVWF      R12+0
	MOVLW      241
	MOVWF      R13+0
L__main75:
	DECFSZ     R13+0, 1
	GOTO       L__main75
	DECFSZ     R12+0, 1
	GOTO       L__main75
	NOP
	NOP
;VideoSwitch.mbas,176 :: 		PORTA.0 = PortsBits[0]
	BTFSC      _PortsBits+0, 0
	GOTO       L__main94
	BCF        PORTA+0, 0
	GOTO       L__main95
L__main94:
	BSF        PORTA+0, 0
L__main95:
;VideoSwitch.mbas,177 :: 		PORTA.1 = PortsBits[1]
	BTFSC      _PortsBits+1, 0
	GOTO       L__main96
	BCF        PORTA+0, 1
	GOTO       L__main97
L__main96:
	BSF        PORTA+0, 1
L__main97:
;VideoSwitch.mbas,178 :: 		PORTA.2 = PortsBits[2]
	BTFSC      _PortsBits+2, 0
	GOTO       L__main98
	BCF        PORTA+0, 2
	GOTO       L__main99
L__main98:
	BSF        PORTA+0, 2
L__main99:
L__main64:
;VideoSwitch.mbas,182 :: 		IF (LCDBackCycle >= LCDBackCycleMax) THEN
	MOVF       _LCDBackCycleMax+0, 0
	SUBWF      _LCDBackCycle+0, 0
	BTFSS      STATUS+0, 0
	GOTO       L__main77
;VideoSwitch.mbas,183 :: 		PORTC.6 = 0
	BCF        PORTC+0, 6
	GOTO       L__main78
;VideoSwitch.mbas,184 :: 		ELSE
L__main77:
;VideoSwitch.mbas,185 :: 		Inc(LCDBackCycle)
	INCF       _LCDBackCycle+0, 1
;VideoSwitch.mbas,186 :: 		END IF
L__main78:
;VideoSwitch.mbas,187 :: 		Delay_ms(100)
	MOVLW      2
	MOVWF      R11+0
	MOVLW      4
	MOVWF      R12+0
	MOVLW      186
	MOVWF      R13+0
L__main79:
	DECFSZ     R13+0, 1
	GOTO       L__main79
	DECFSZ     R12+0, 1
	GOTO       L__main79
	DECFSZ     R11+0, 1
	GOTO       L__main79
	NOP
;VideoSwitch.mbas,188 :: 		WEND
	GOTO       L__main45
L_end_main:
	GOTO       $+0
; end of _main
