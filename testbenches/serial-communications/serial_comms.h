/* ============================================
 * FILENAME: serial_comms.h
 * AUTHOR:   Christian Clyde G. Decierdo
 * DATE:     April 2024
 * DESC:     General purpose serial communication library for PIC16F887A w/ delay function
   ============================================*/

#ifndef serial_comms_h
#define serial_comms_h

#include <xc.h>

// function prototypes
void serial_init(void);
void serial_send(unsigned char data);
void serial_handshake(void);
void delay(int overflows);
unsigned char serial_read(void);

void serial_init(void)
{
    // configure the serial port TXSTA register
    TXSTA = 0b00100100; // TXEN = 1, SYNC = 0, BRGH = 1, 8-bit transmission
    TXIF = 0;           // clear the TX interrupt flag

    // configure the serial port RCSTA register
    RCSTA = 0b10010000; // SPEN = 1, RX9 = 0, CREN = 1, 8-bit reception
    RCIF = 0;           // clear the RX interrupt flag

    SPBRG = 25; // 9600 baud rate, assuming Fosc = 4MHz & BRGH = 1
}

void serial_send(unsigned char data)
{
    while (!TXIF)
        ;         // wait for the previous transmission to finish
    TXREG = data; // send the data
    delay(10);    // wait for the data to be sent
}

unsigned char serial_read(void)
{
    while (!RCIF)
        ;         // wait for the data to be received
    return RCREG; // return the received data
}

void serial_handshake()
{
    // device handshake routine
    delay(100);        // wait for this device to be ready
    serial_send(0x01); // send the handshake signal

    // Improved handshake receive logic
    unsigned char response = 0;
    do
    {
        response = serial_read(); // Attempt to read the handshake response
        if (response == 0x01)
            break; // Break if correct response is received
        delay(10); // Optional: small delay to prevent hogging the CPU
    } while (response != 0x01); // Ensure we exit if the right response is received

    // Proceed if the correct handshake is confirmed
    unsigned char serialCheck = serial_read(); // read the data from the other device
    PORTB = serialCheck;                       // display the data on PORTB
    delay(500);
    PORTB = 0x00; // clear the PORTB, signifying the handshake is complete
}

void delay(int overflows)
{
    int i;
    for (i = 0; i < overflows; i++)
    {
        while (!T0IF)
            ;
        T0IF = 0;
    }
}

#endif // serial_comms_h