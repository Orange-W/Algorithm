//
//  Fibonacci.m
//  算法
//
//  Created by user on 16/1/30.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "Fibonacci.h"

@implementation Fibonacci
/**
 *  @author Orange-W, 16-01-30 03:01:42
 *
 *  @brief 斐波那契数列非递归实现
 */
+ (NSInteger)fibonacciInNumber:(NSInteger) number{
    if (number<=0) {
        return 0;
    }
    
    NSInteger first = 0;
    NSInteger second = 1;
    NSInteger next = 0;
    for (int i=2; i<=number; i++) {
        next = first + second;
        second = first;
        first = next;
    }
    
    return  first+second;
}
@end
