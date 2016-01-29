//
//  SmallestRotateNumber.m
//  算法
//
//  Created by user on 16/1/28.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "SmallestRotateNumber.h"

@implementation SmallestRotateNumber

+ (NSInteger)smallestEotateNumberFindWithArray:(NSArray *)array{
    NSInteger start=0,end=array.count-1;
    if (array.count == 0) {
        return -25536;
    }
    
    if (array[start]<array[end]) {
        return [array[start] integerValue];
    }
    
    
    NSInteger middle;
    while ((middle = floor((start+end)/2)) && start < end-1) {
        if ([array[middle] integerValue]>[array[start] integerValue]) {
            start = middle;
        }
        
        if ([array[middle] integerValue]<[array[end] integerValue]) {
            if ([array[start] integerValue] == [array[end] integerValue]) {
                return [array[middle] integerValue];
            }
            end = middle;
        }
        if (   [array[middle] integerValue] == [array[start] integerValue]){
            if ([array[start] integerValue]>[array[end] integerValue]) {
                start = middle;
            }
        
        }
        if ([array[middle] integerValue] == [array[end]   integerValue]){
            if ([array[start] integerValue]>[array[end] integerValue]) {
                end = middle;
            }
        }
            
        if ([array[start] integerValue] == [array[end] integerValue]){
            if ([array[middle] integerValue] == [array[end]   integerValue]) {
                start++;
                if ([array[start] integerValue]<[array[end] integerValue]){
                    return [array[start] integerValue];
                }
            }
        
        }
    }

    return [array[end] integerValue];
}
@end
