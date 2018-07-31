unsigned short kp,kp1;
sbit LCD_RS at RB0_bit;
sbit LCD_EN at RB1_bit;
sbit LCD_D4 at RB2_bit;
sbit LCD_D5 at RB3_bit;
sbit LCD_D6 at RB4_bit;
sbit LCD_D7 at RB5_bit;

sbit LCD_RS_Direction at TRISB0_bit;
sbit LCD_EN_Direction at TRISB1_bit;
sbit LCD_D4_Direction at TRISB2_bit;
sbit LCD_D5_Direction at TRISB3_bit;
sbit LCD_D6_Direction at TRISB4_bit;
sbit LCD_D7_Direction at TRISB5_bit;
    char Message;

void main() {
TRISC=0xFF;
  Lcd_Init();
  Lcd_Cmd(_LCD_CLEAR);
  Lcd_Cmd(_LCD_CURSOR_OFF);

while (1)
{
kp1=PORTC;
     Lcd_Cmd(_LCD_CLEAR);
  Lcd_Cmd(_LCD_CURSOR_OFF);
     switch (kp1) {


      case  0x06: kp = 49; break; // 1
      case  0x5B: kp = 50 ; break; // 2
      case  0x4F: kp = 51; break; // 3
      case  0x66: kp = 52 ; break; // 4
      case  0x6D: kp = 53 ; break; // 5
      case  0x7D: kp = 54 ; break; // 6
      case  0x07: kp = 55; break; // 7
      case  0x7F: kp = 56; break; // 8
      case  0x6F: kp = 57; break; // 9
      default: Lcd_Out(1, 1,"Invalid state!");

    }
     Lcd_Chr(1, 10, kp);
        delay_ms(1000);
    }

}