
_Display_dezenas:

;MyProject.c,11 :: 		Display_dezenas()
;MyProject.c,13 :: 		portc.rc4=1;
	BSF        PORTC+0, 4
;MyProject.c,14 :: 		Dezenas=(atual/10);
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _atual+0, 0
	MOVWF      R0+0
	MOVF       _atual+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _Dezenas+0
;MyProject.c,15 :: 		portd=Display[Dezenas];
	MOVF       R0+0, 0
	ADDLW      _Display+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;MyProject.c,16 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_Display_dezenas0:
	DECFSZ     R13+0, 1
	GOTO       L_Display_dezenas0
	DECFSZ     R12+0, 1
	GOTO       L_Display_dezenas0
	NOP
	NOP
;MyProject.c,17 :: 		portc.rc4=0;
	BCF        PORTC+0, 4
;MyProject.c,18 :: 		portd=0;
	CLRF       PORTD+0
;MyProject.c,19 :: 		}
L_end_Display_dezenas:
	RETURN
; end of _Display_dezenas

_Display_unidades:

;MyProject.c,20 :: 		Display_unidades()
;MyProject.c,22 :: 		portc.rc5=1;
	BSF        PORTC+0, 5
;MyProject.c,23 :: 		Unidades=(atual%10);
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _atual+0, 0
	MOVWF      R0+0
	MOVF       _atual+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _Unidades+0
;MyProject.c,24 :: 		portd=Display[Unidades];
	MOVF       R0+0, 0
	ADDLW      _Display+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;MyProject.c,25 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_Display_unidades1:
	DECFSZ     R13+0, 1
	GOTO       L_Display_unidades1
	DECFSZ     R12+0, 1
	GOTO       L_Display_unidades1
	NOP
	NOP
;MyProject.c,26 :: 		portc.rc5=0;
	BCF        PORTC+0, 5
;MyProject.c,27 :: 		portd=0;
	CLRF       PORTD+0
;MyProject.c,28 :: 		}
L_end_Display_unidades:
	RETURN
; end of _Display_unidades

_Dmax:

;MyProject.c,29 :: 		Dmax()
;MyProject.c,31 :: 		portc.rc4=1;
	BSF        PORTC+0, 4
;MyProject.c,32 :: 		Dezenas=(max/10);
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _max+0, 0
	MOVWF      R0+0
	MOVF       _max+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _Dezenas+0
;MyProject.c,33 :: 		portd=Display[Dezenas];
	MOVF       R0+0, 0
	ADDLW      _Display+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;MyProject.c,34 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_Dmax2:
	DECFSZ     R13+0, 1
	GOTO       L_Dmax2
	DECFSZ     R12+0, 1
	GOTO       L_Dmax2
	NOP
	NOP
;MyProject.c,35 :: 		portc.rc4=0;
	BCF        PORTC+0, 4
;MyProject.c,36 :: 		portd=0;
	CLRF       PORTD+0
;MyProject.c,37 :: 		}
L_end_Dmax:
	RETURN
; end of _Dmax

_Umax:

;MyProject.c,38 :: 		Umax()
;MyProject.c,40 :: 		portc.rc5=1;
	BSF        PORTC+0, 5
;MyProject.c,41 :: 		Unidades=(max%10);
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _max+0, 0
	MOVWF      R0+0
	MOVF       _max+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _Unidades+0
;MyProject.c,42 :: 		portd=Display[Unidades];
	MOVF       R0+0, 0
	ADDLW      _Display+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;MyProject.c,43 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_Umax3:
	DECFSZ     R13+0, 1
	GOTO       L_Umax3
	DECFSZ     R12+0, 1
	GOTO       L_Umax3
	NOP
	NOP
;MyProject.c,44 :: 		portc.rc5=0;
	BCF        PORTC+0, 5
;MyProject.c,45 :: 		portd=0;
	CLRF       PORTD+0
;MyProject.c,46 :: 		}
L_end_Umax:
	RETURN
; end of _Umax

_Dmin:

;MyProject.c,47 :: 		Dmin()
;MyProject.c,49 :: 		portc.rc4=1;
	BSF        PORTC+0, 4
;MyProject.c,50 :: 		Dezenas=(min/10);
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _min+0, 0
	MOVWF      R0+0
	MOVF       _min+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R0+0, 0
	MOVWF      _Dezenas+0
;MyProject.c,51 :: 		portd=Display[Dezenas];
	MOVF       R0+0, 0
	ADDLW      _Display+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;MyProject.c,52 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_Dmin4:
	DECFSZ     R13+0, 1
	GOTO       L_Dmin4
	DECFSZ     R12+0, 1
	GOTO       L_Dmin4
	NOP
	NOP
;MyProject.c,53 :: 		portc.rc4=0;
	BCF        PORTC+0, 4
;MyProject.c,54 :: 		portd=0;
	CLRF       PORTD+0
;MyProject.c,55 :: 		}
L_end_Dmin:
	RETURN
; end of _Dmin

_Umin:

;MyProject.c,56 :: 		Umin()
;MyProject.c,58 :: 		portc.rc5=1;
	BSF        PORTC+0, 5
;MyProject.c,59 :: 		Unidades=(min%10);
	MOVLW      10
	MOVWF      R4+0
	MOVLW      0
	MOVWF      R4+1
	MOVF       _min+0, 0
	MOVWF      R0+0
	MOVF       _min+1, 0
	MOVWF      R0+1
	CALL       _Div_16x16_S+0
	MOVF       R8+0, 0
	MOVWF      R0+0
	MOVF       R8+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      _Unidades+0
;MyProject.c,60 :: 		portd=Display[Unidades];
	MOVF       R0+0, 0
	ADDLW      _Display+0
	MOVWF      FSR
	MOVF       INDF+0, 0
	MOVWF      PORTD+0
;MyProject.c,61 :: 		delay_ms(5);
	MOVLW      13
	MOVWF      R12+0
	MOVLW      251
	MOVWF      R13+0
L_Umin5:
	DECFSZ     R13+0, 1
	GOTO       L_Umin5
	DECFSZ     R12+0, 1
	GOTO       L_Umin5
	NOP
	NOP
;MyProject.c,62 :: 		portc.rc5=0;
	BCF        PORTC+0, 5
;MyProject.c,63 :: 		portd=0;
	CLRF       PORTD+0
;MyProject.c,64 :: 		}
L_end_Umin:
	RETURN
; end of _Umin

_main:

;MyProject.c,66 :: 		void main()
;MyProject.c,68 :: 		TRISD=0;
	CLRF       TRISD+0
;MyProject.c,69 :: 		PORTD=0;
	CLRF       PORTD+0
;MyProject.c,70 :: 		TRISB=255;
	MOVLW      255
	MOVWF      TRISB+0
;MyProject.c,71 :: 		PORTB=255;
	MOVLW      255
	MOVWF      PORTB+0
;MyProject.c,72 :: 		TRISA.RA0=1;
	BSF        TRISA+0, 0
;MyProject.c,73 :: 		TRISC=0;
	CLRF       TRISC+0
;MyProject.c,74 :: 		PORTC=0;
	CLRF       PORTC+0
;MyProject.c,75 :: 		PWM1_Init(2000);
	BSF        T2CON+0, 0
	BCF        T2CON+0, 1
	MOVLW      249
	MOVWF      PR2+0
	CALL       _PWM1_Init+0
;MyProject.c,76 :: 		PWM1_Start();
	CALL       _PWM1_Start+0
;MyProject.c,77 :: 		while(1)
L_main6:
;MyProject.c,79 :: 		leitura=ADC_READ(0);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      _leitura+0
	MOVF       R0+1, 0
	MOVWF      _leitura+1
;MyProject.c,80 :: 		leitura=leitura*0.0978;
	CALL       _int2double+0
	MOVLW      94
	MOVWF      R4+0
	MOVLW      75
	MOVWF      R4+1
	MOVLW      72
	MOVWF      R4+2
	MOVLW      123
	MOVWF      R4+3
	CALL       _Mul_32x32_FP+0
	CALL       _double2int+0
	MOVF       R0+0, 0
	MOVWF      _leitura+0
	MOVF       R0+1, 0
	MOVWF      _leitura+1
;MyProject.c,81 :: 		atual=leitura;
	MOVF       R0+0, 0
	MOVWF      _atual+0
	MOVF       R0+1, 0
	MOVWF      _atual+1
;MyProject.c,82 :: 		Display_dezenas();
	CALL       _Display_dezenas+0
;MyProject.c,83 :: 		Display_unidades();
	CALL       _Display_unidades+0
;MyProject.c,85 :: 		dutycicle=255-(ADC_READ(0)/4);
	CLRF       FARG_ADC_Read_channel+0
	CALL       _ADC_Read+0
	MOVF       R0+0, 0
	MOVWF      R2+0
	MOVF       R0+1, 0
	MOVWF      R2+1
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	RRF        R2+1, 1
	RRF        R2+0, 1
	BCF        R2+1, 7
	MOVF       R2+0, 0
	SUBLW      255
	MOVWF      R0+0
	MOVF       R2+1, 0
	BTFSS      STATUS+0, 0
	ADDLW      1
	CLRF       R0+1
	SUBWF      R0+1, 1
	MOVF       R0+0, 0
	MOVWF      _dutycicle+0
	MOVF       R0+1, 0
	MOVWF      _dutycicle+1
;MyProject.c,86 :: 		PWM1_SET_DUTY(dutycicle);
	MOVF       R0+0, 0
	MOVWF      FARG_PWM1_Set_Duty_new_duty+0
	CALL       _PWM1_Set_Duty+0
;MyProject.c,88 :: 		if(atual>max)
	MOVLW      128
	XORWF      _max+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _atual+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main21
	MOVF       _atual+0, 0
	SUBWF      _max+0, 0
L__main21:
	BTFSC      STATUS+0, 0
	GOTO       L_main8
;MyProject.c,90 :: 		max=atual;
	MOVF       _atual+0, 0
	MOVWF      _max+0
	MOVF       _atual+1, 0
	MOVWF      _max+1
;MyProject.c,91 :: 		}
L_main8:
;MyProject.c,92 :: 		if(atual<min)
	MOVLW      128
	XORWF      _atual+1, 0
	MOVWF      R0+0
	MOVLW      128
	XORWF      _min+1, 0
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main22
	MOVF       _min+0, 0
	SUBWF      _atual+0, 0
L__main22:
	BTFSC      STATUS+0, 0
	GOTO       L_main9
;MyProject.c,94 :: 		min=atual;
	MOVF       _atual+0, 0
	MOVWF      _min+0
	MOVF       _atual+1, 0
	MOVWF      _min+1
;MyProject.c,95 :: 		}
L_main9:
;MyProject.c,96 :: 		while(B0==0)
L_main10:
	BTFSC      PORTB+0, 0
	GOTO       L_main11
;MyProject.c,98 :: 		atual=max;
	MOVF       _max+0, 0
	MOVWF      _atual+0
	MOVF       _max+1, 0
	MOVWF      _atual+1
;MyProject.c,99 :: 		Display_dezenas();
	CALL       _Display_dezenas+0
;MyProject.c,100 :: 		Display_unidades();
	CALL       _Display_unidades+0
;MyProject.c,101 :: 		}
	GOTO       L_main10
L_main11:
;MyProject.c,102 :: 		while(B1==0)
L_main12:
	BTFSC      PORTB+0, 1
	GOTO       L_main13
;MyProject.c,104 :: 		atual=min;
	MOVF       _min+0, 0
	MOVWF      _atual+0
	MOVF       _min+1, 0
	MOVWF      _atual+1
;MyProject.c,105 :: 		Display_dezenas();
	CALL       _Display_dezenas+0
;MyProject.c,106 :: 		Display_unidades();
	CALL       _Display_unidades+0
;MyProject.c,107 :: 		}
	GOTO       L_main12
L_main13:
;MyProject.c,108 :: 		}
	GOTO       L_main6
;MyProject.c,109 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
