
_main:

;lcdpic.c,17 :: 		void main() {
;lcdpic.c,18 :: 		TRISC=0xFF;
	MOVLW      255
	MOVWF      TRISC+0
;lcdpic.c,19 :: 		Lcd_Init();
	CALL       _Lcd_Init+0
;lcdpic.c,20 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcdpic.c,21 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcdpic.c,23 :: 		while (1)
L_main0:
;lcdpic.c,25 :: 		kp1=PORTC;
	MOVF       PORTC+0, 0
	MOVWF      _kp1+0
;lcdpic.c,26 :: 		Lcd_Cmd(_LCD_CLEAR);
	MOVLW      1
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcdpic.c,27 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);
	MOVLW      12
	MOVWF      FARG_Lcd_Cmd_out_char+0
	CALL       _Lcd_Cmd+0
;lcdpic.c,28 :: 		switch (kp1) {
	GOTO       L_main2
;lcdpic.c,31 :: 		case  0x06: kp = 49; break; // 1
L_main4:
	MOVLW      49
	MOVWF      _kp+0
	GOTO       L_main3
;lcdpic.c,32 :: 		case  0x5B: kp = 50 ; break; // 2
L_main5:
	MOVLW      50
	MOVWF      _kp+0
	GOTO       L_main3
;lcdpic.c,33 :: 		case  0x4F: kp = 51; break; // 3
L_main6:
	MOVLW      51
	MOVWF      _kp+0
	GOTO       L_main3
;lcdpic.c,34 :: 		case  0x66: kp = 52 ; break; // 4
L_main7:
	MOVLW      52
	MOVWF      _kp+0
	GOTO       L_main3
;lcdpic.c,35 :: 		case  0x6D: kp = 53 ; break; // 5
L_main8:
	MOVLW      53
	MOVWF      _kp+0
	GOTO       L_main3
;lcdpic.c,36 :: 		case  0x7D: kp = 54 ; break; // 6
L_main9:
	MOVLW      54
	MOVWF      _kp+0
	GOTO       L_main3
;lcdpic.c,37 :: 		case  0x07: kp = 55; break; // 7
L_main10:
	MOVLW      55
	MOVWF      _kp+0
	GOTO       L_main3
;lcdpic.c,38 :: 		case  0x7F: kp = 56; break; // 8
L_main11:
	MOVLW      56
	MOVWF      _kp+0
	GOTO       L_main3
;lcdpic.c,39 :: 		case  0x6F: kp = 57; break; // 9
L_main12:
	MOVLW      57
	MOVWF      _kp+0
	GOTO       L_main3
;lcdpic.c,40 :: 		default: Lcd_Out(1, 1,"Invalid state!");
L_main13:
	MOVLW      1
	MOVWF      FARG_Lcd_Out_row+0
	MOVLW      1
	MOVWF      FARG_Lcd_Out_column+0
	MOVLW      ?lstr1_lcdpic+0
	MOVWF      FARG_Lcd_Out_text+0
	CALL       _Lcd_Out+0
;lcdpic.c,42 :: 		}
	GOTO       L_main3
L_main2:
	MOVF       _kp1+0, 0
	XORLW      6
	BTFSC      STATUS+0, 2
	GOTO       L_main4
	MOVF       _kp1+0, 0
	XORLW      91
	BTFSC      STATUS+0, 2
	GOTO       L_main5
	MOVF       _kp1+0, 0
	XORLW      79
	BTFSC      STATUS+0, 2
	GOTO       L_main6
	MOVF       _kp1+0, 0
	XORLW      102
	BTFSC      STATUS+0, 2
	GOTO       L_main7
	MOVF       _kp1+0, 0
	XORLW      109
	BTFSC      STATUS+0, 2
	GOTO       L_main8
	MOVF       _kp1+0, 0
	XORLW      125
	BTFSC      STATUS+0, 2
	GOTO       L_main9
	MOVF       _kp1+0, 0
	XORLW      7
	BTFSC      STATUS+0, 2
	GOTO       L_main10
	MOVF       _kp1+0, 0
	XORLW      127
	BTFSC      STATUS+0, 2
	GOTO       L_main11
	MOVF       _kp1+0, 0
	XORLW      111
	BTFSC      STATUS+0, 2
	GOTO       L_main12
	GOTO       L_main13
L_main3:
;lcdpic.c,43 :: 		Lcd_Chr(1, 10, kp);
	MOVLW      1
	MOVWF      FARG_Lcd_Chr_row+0
	MOVLW      10
	MOVWF      FARG_Lcd_Chr_column+0
	MOVF       _kp+0, 0
	MOVWF      FARG_Lcd_Chr_out_char+0
	CALL       _Lcd_Chr+0
;lcdpic.c,44 :: 		delay_ms(1000);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
	NOP
	NOP
;lcdpic.c,45 :: 		}
	GOTO       L_main0
;lcdpic.c,47 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
