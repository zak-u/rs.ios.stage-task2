#import "TwoDimensionalArraySorter.h"

@implementation TwoDimensionalArraySorter

- (NSArray *)twoDimensionalSort:(NSArray<NSArray *> *)array {
    if (array != nil && [array.firstObject isKindOfClass:[NSArray class]]) {
    
        NSMutableArray *numberArray ;
        NSMutableArray *stringArray;
        
        for (NSUInteger arrayIndex = 0; arrayIndex < array.count; arrayIndex = arrayIndex+1) {
            NSArray *subArray = [array objectAtIndex: arrayIndex];
            if ([subArray.firstObject isKindOfClass:[NSNumber class]]) {
                
                if(numberArray == nil){
                    numberArray = [NSMutableArray arrayWithArray:subArray];
                }
                else {
                    [numberArray addObjectsFromArray:subArray];
                }
            }
            else if ([subArray.firstObject isKindOfClass:[NSString class]]){
                if(stringArray == nil){
                    stringArray = [NSMutableArray  arrayWithArray:subArray];
                }
                else {
                    [stringArray addObjectsFromArray:subArray];
                }
            }
        }
       
        if (numberArray != nil ) {
            NSArray *numbers =  [numberArray sortedArrayUsingComparator:^NSComparisonResult(NSNumber *firstObject, NSNumber *secondObject) {
                return firstObject.intValue > secondObject.intValue;
            }];
           
            return numbers;
        }
        else {
            NSArray *strings =  [stringArray sortedArrayUsingComparator:^NSComparisonResult(NSString *firstObject, NSString *secondObject) {
                return [firstObject caseInsensitiveCompare:secondObject];
            }];
            return strings;
        }
    }
    return @[];
}

@end
