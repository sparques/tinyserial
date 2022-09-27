# TinySerial

This is a fork of TinySerial (com) for simple serial port communication.

I've added support for baud rates greater than 115200 and made it so if you do not specify a baud rate, the existing baudrate on the tty is used.

## Speed Up

The highest "standard" baud rate is 115200, but lots of devices support faster. I've added all the speeds defined in bits/termio-baud.h. 

I noticed tinyserial was weirdly slow, no matter how high I set the baudrate. Most notable when pasting a block of data into the terminal. Well, looking at the code you can see it would set the local terminal baud to 9600. I have instead set it to match whatever your output baud is (linux tty/pty can handle any speed you set). 