//
//  FindOneNumber.m
//  算法
//
//  Created by user on 16/1/31.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "FindOneNumber.h"

@implementation FindOneNumber
/**
 *  @author Orange-W, 16-01-31 00:01:49
 *
 *  @brief 输出数字二进制1的个数。
 */
+ (NSInteger) findOneNumberWithNumber:(NSInteger)number{
    NSLog(@"%lX",number);
    NSInteger count=0;
    while(number){
        count++;
        number = number & (number-1);
    }
    return count;
}

@end
