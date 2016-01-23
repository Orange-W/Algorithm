//
//  FindNumberFromArray.m
//  算法
//
//  Created by user on 16/1/19.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "FindNumberFromArray.h"

@implementation FindNumberFromArray

+ (BOOL)findNumber:(NSInteger) number{
    return [[FindNumberFromArray alloc] findWithNumber:number];
}

/** 规律
 *  数组从左到右,从下到上递增
 */
- (NSArray *)array{
    return @[
             @[@1,@2,@4, @9],
             @[@2,@4,@9, @2],
             @[@4,@7,@10,@13],
             @[@6,@8,@11,@15],
            ];
}



- (BOOL)findWithNumber:(NSInteger) number{
    BOOL isFind= NO;
    NSInteger strartCol=0, strartRow = 0;
    NSInteger endCol = [self array].count-1;
    NSInteger endRow = [[self array].firstObject count]-1;
    NSNumber *compareNumber = [self array][strartCol][endRow];
    while (strartRow < endRow || strartCol < endCol) {
        if ([compareNumber intValue] == number) {
            return YES;
        }
        
        compareNumber = [self array][strartCol][endRow];
        if (strartRow<endRow || strartCol<endCol) {
            if ([compareNumber intValue] > number) endRow--;//右
            if ([compareNumber intValue] < number ) strartCol++;//上

        }
        
        compareNumber = [self array][endCol][strartRow];
        if (strartRow<endRow || strartCol<endCol) {
            if([compareNumber intValue] < number) strartRow++;//左
            if ([compareNumber intValue] > number) endCol--;//下
        }
        NSLog(@"----------");
        //NSLog(@"%d,%d,%d,%d\n",strartRow,endRow,strartCol,endCol);
        
    }
    
    if([compareNumber intValue] == number){
        isFind = YES;
    }
    return isFind;
}

@end
