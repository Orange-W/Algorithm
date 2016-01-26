//
//  FastSort.m
//  算法
//
//  Created by user on 16/1/26.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "FastSort.h"

@implementation FastSort
/*
 *  对数组进行快速排序(动态规划/分治)
 */

+ (void)fastSortWithArray:(NSMutableArray *)array{
    NSLog(@"原顺序:%@",array);
    NSLog(@"%@",[[[FastSort alloc] init] sortWithArray:array]);
}

- (NSArray *)sortWithArray:(NSMutableArray *)array{
    [self quickSortWithArray:array
                         startIndex:0
                           endIndex:array.count-1];
    return array;
}

- (void)quickSortWithArray:(NSMutableArray *) array
                startIndex:(NSInteger) start
                  endIndex:(NSInteger) end{
    if (start>=end || start<0 || end>=array.count) {
        return;
    }
//    NSLog(@"|%ld-%ld|",start,end);
    NSInteger mStart = start,mEnd = end;
    NSInteger index = start;
    while (start<end) {
        if ([array[end] integerValue] <= [array[index] integerValue] && end!=index) {
            while ([array[start] integerValue] <= [array[index] integerValue] && start<array.count-1 && start <end) start++;
            NSLog(@"ooarray(%ld)%@-end(%ld)%@-index(%ld)%@",start,array[start],end,array[end],index,array[index]);
            NSLog(@"%@",array);
            NSNumber *tmpNumber = array[end];
            array[end] = array[start];
            array[start] = tmpNumber;
        }
        end--;
    }
//    NSLog(@"%@",array);
    NSNumber *tmpNumber = array[index];
    array[index] = array[start];
    array[start] = tmpNumber;
//    NSLog(@"%@-%ld-%ld\n---------------",array,start,index);
//    NSLog(@"%d",start);
    if (start>mStart) {
        NSLog(@"index(%ld)|gg%ld-%ld|",start,mStart,start-1);
        [self quickSortWithArray:array startIndex:mStart endIndex:start-1];
    }
    
    if (start<mEnd) {
        NSLog(@"index(%ld)|gg%ld-%ld|",start,start+1,mEnd);
        [self quickSortWithArray:array startIndex:start+1 endIndex:mEnd];
    }
    
}


@end
