//
//  Reoder.m
//  算法
//
//  Created by user on 16/2/3.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "Reoder.h"

@implementation Reoder

+ (void)reorderArray:(NSMutableArray *)array withJudgeBlock:(Judge)block{
    if (!array.count) {
        return;
    }
    
    int begin = 0;
    int end = (int)array.count-1;
    
    while (begin<end) {
        while (begin<end && block(array[begin])) {
            begin++;
        }
        
        while (begin<end && !block(array[end])) {
            end--;
        }
        
        if (begin<end) {
            id tmp =  array[begin];
            array[begin] = array[end];
            array[end] = tmp;
        }
    }
    
    NSLog(@"%@",array);
}


@end
