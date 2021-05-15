#import "IPFormatConverter.h"

@implementation IPFormatConverter

- (NSString *)ipFormatConverter:(NSArray *)numbersArray {
    if (numbersArray != nil && numbersArray.count != 0 && numbersArray.count < 5) {
        NSNumber *first = @0;
        NSNumber *second = @0;
        NSNumber *third = @0;
        NSNumber *fourth = @0;
        for (int index = 0 ; index < numbersArray.count; index = index+1) {
            NSNumber *number = [numbersArray objectAtIndex: index] ;
            if (number.intValue < 0) {
                return @"Negative numbers are not valid for input.";
            }
            else if (number.intValue > 255){
                return @"The numbers in the input array can be in the range from 0 to 255.";
            }
            switch (index+1) {
                case 1:
                    first = number;
                    break;
                case 2:
                    second = number;
                    break;
                case 3:
                    third = number;
                    break;
                case 4:
                    fourth = number;
                    break;
                default:
                    break;
            }
        }
        NSString *ipAddress = [NSString stringWithFormat:@"%@.%@.%@.%@", first, second,third,fourth];

        return ipAddress;
    }
    return @"";
}

@end
