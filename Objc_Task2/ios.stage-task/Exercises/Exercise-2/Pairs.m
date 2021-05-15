#import "Pairs.h"

@implementation Pairs

- (NSInteger)countPairs:(NSArray <NSNumber *> *)array number:(NSNumber *)number {
    NSInteger countOfPairs = 0;
    for (NSNumber *currentNumber in array) {
        NSUInteger nextElement = [array indexOfObject: currentNumber] + 1;
        for (NSUInteger index = nextElement; index < array.count; index = index+1) {
            int differenceInNumber = abs(currentNumber.intValue - [array objectAtIndex:index].intValue);
            if (differenceInNumber == number.intValue) {
                countOfPairs = countOfPairs + 1;
            }
        }
    }
    return countOfPairs;
}

@end
