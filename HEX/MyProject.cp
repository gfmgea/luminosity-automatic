#line 1 "C:/Users/Maria/Desktop/Gu Facul/4° Semestre/Microcontroladores I - Lab/EXPP10/MyProject.c"




char Display[] = {63, 6, 91, 79, 102, 109, 125, 7, 127, 111};
char contagem;
int dutycicle,trava0,trava1,leitura,num,min=1024,max,atual,flag=0;
char Unidades;
char Dezenas;

Display_dezenas()
 {
 portc.rc4=1;
 Dezenas=(atual/10);
 portd=Display[Dezenas];
 delay_ms(5);
 portc.rc4=0;
 portd=0;
 }
Display_unidades()
 {
 portc.rc5=1;
 Unidades=(atual%10);
 portd=Display[Unidades];
 delay_ms(5);
 portc.rc5=0;
 portd=0;
}
 Dmax()
{
 portc.rc4=1;
 Dezenas=(max/10);
 portd=Display[Dezenas];
 delay_ms(5);
 portc.rc4=0;
 portd=0;
}
 Umax()
{
 portc.rc5=1;
 Unidades=(max%10);
 portd=Display[Unidades];
 delay_ms(5);
 portc.rc5=0;
 portd=0;
}
 Dmin()
{
 portc.rc4=1;
 Dezenas=(min/10);
 portd=Display[Dezenas];
 delay_ms(5);
 portc.rc4=0;
 portd=0;
}
 Umin()
{
 portc.rc5=1;
 Unidades=(min%10);
 portd=Display[Unidades];
 delay_ms(5);
 portc.rc5=0;
 portd=0;
}

void main()
{
 TRISD=0;
 PORTD=0;
 TRISB=255;
 PORTB=255;
 TRISA.RA0=1;
 TRISC=0;
 PORTC=0;
 PWM1_Init(2000);
 PWM1_Start();
 while(1)
 {
 leitura=ADC_READ(0);
 leitura=leitura*0.0978;
 atual=leitura;
 Display_dezenas();
 Display_unidades();

 dutycicle=255-(ADC_READ(0)/4);
 PWM1_SET_DUTY(dutycicle);

 if(atual>max)
 {
 max=atual;
 }
 if(atual<min)
 {
 min=atual;
 }
 while( PORTB.RB0 ==0)
 {
 atual=max;
 Display_dezenas();
 Display_unidades();
 }
 while( PORTB.RB1 ==0)
 {
 atual=min;
 Display_dezenas();
 Display_unidades();
 }
 }
}
