#import "ReverseBinary.h"

UInt8 ReverseInteger(UInt8 n) {
    UInt8 number = n;
    UInt8 binaryReverseNumber = 0;
    UInt8 multiplier = 1; // 2^0 first of 8s bits
    while (number > 0) {
        UInt8 lastBit = number >> 7; //*___ ____ , where * - lastBit
        binaryReverseNumber = binaryReverseNumber + lastBit*multiplier;
        //multiply lastbit by our multiplier which moves from one to 128
        number = number << 1;//Shifting our bits to the left <--, so the lastBit lost
        multiplier = multiplier << 1;
    }
    return binaryReverseNumber;
}
