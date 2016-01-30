//
//  IntegerPower.m
//  算法
//
//  Created by user on 16/1/31.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "IntegerPower.h"

@implementation IntegerPower

- (double)integerPowerWithDouble:(double)number exponent:(NSInteger)count{
    if (count==0) {
        return 1;
    }
    
    if (count == 1) {
        return number;
    }
    double result = [self integerPowerWithDouble:number exponent:count>>1];
    result *= result;
    if (count %2 ==1) {
        result *= number;
    }
    
    
    return result;
}

+ (NSInteger)integerPowerWithDouble:(double)number exponent:(NSInteger)count{
    return [[IntegerPower new] integerPowerWithDouble:number exponent:count];
}
@end
