//
//  IntegerPower.m
//  算法
//
//  Created by user on 16/1/31.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "IntegerPower.h"

@implementation IntegerPower

/**
 *  @author Orange-W, 16-01-31 04:01:30
 *
 *  @brief 求一个数的整数次方
 */

- (double)integerPowerWithDouble:(double)number exponent:(NSInteger)count{
    if (count==0) {
        return 1;
    }
    
    if (count == 1) {
        return number;
    }
    double result = [self integerPowerWithDouble:number exponent:count>>1];
    result *= result;
    if ((count&1) ==1) {
        result *= number;
    }
    
    
    return result;
}

+ (double)integerPowerWithDouble:(double)number exponent:(NSInteger)count{
    return [[IntegerPower new] integerPowerWithDouble:number exponent:count];
}
@end
