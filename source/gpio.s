//GPIO Controller address: 0x20200000
//
// 00-24: FUNCTION SELECT
// 28-36: Turn on pin
// 40-48: Turn off pin
// 52-60: pin input
//                100 0000 0000 0000 0000 = 1 << 18
//24 bits : 0000 0000 0000 0000 0000 0000
//             |    |    |    |    |    |
//            20   16   12    8    4    0               
// First 4 BYTES are first 10 gpio pins
// Second 4 BYTES are next 10 gpio pins
// Total of 54 gpio pins
// need 6 sets of 4 bytes
// 24 bytes in total
// 
// byte set 1+0    30  27  24  21  18  15  12  9   6   3
//                 |   |   |   |   |   |   |   |   |   |                                                  
// Bytes  0- 4: 00 000 000 000 000 000 000 000 000 000 000 - pins 0-9
// Pins            9   8   7   6   5   4   3   2   1   0
// byte set 2+4                                                               
// Bytes  5- 8: 00 000 000 000 000 000 000 000 000 000 000 - pins 10-19
// Pins            19  18  17  16  15  14  13  12  11  10              
// byte set 3+8                                                               
// Bytes  9-12: 00 000 000 000 000 000 000 000 000 000 000 - pins 20-29
// Pins            29  28  27  26  25  24  23  22  21  20          
// byte set 4+12                                                               
// Bytes 13-16: 00 000 000 000 000 000 000 000 000 000 000 - pins 30-39
// Pins            39  38  37  36  35  34  33  32  31  30            
// byte set 5+16                                                               
// Bytes 17-20: 00 000 000 000 000 000 000 000 000 000 000 - pins 40-49
// Pins            49  48  47  46  45  44  43  42  41  40  
// byte set 6+20                                                               
// Bytes 20-24: 00 000 000 000 000 000 000 000 000 000 000 - pins 50-54
// Pins                                54  53  52  51  50  
