//
//  Reoder.m
//  算法
//
//  Created by user on 16/2/3.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "Reoder.h"

@implementation Reoder
/**
 *  @author Orange-W, 16-02-04 06:02:46
 *
 *  @brief 更具输入的 block 让原数组排序
 */
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
