//
//  TubSort.m
//  算法
//
//  Created by user on 16/1/27.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "TubSort.h"

@interface TubSort()
@property (strong, readonly, nonatomic) NSArray *data;
@end

@implementation TubSort

- (NSArray *)data{
    return @[@6,@7,@8,@8,@9,@3,@6,@5,@1,@4,@2,@1,@0];
}

+ (void)tubSort{
    NSMutableArray *array = [NSMutableArray array];
    for (int i=0; i<=10; i++) {
        [array addObject:@0];
    }
    for (NSNumber *number in [[TubSort new] data]) {
        array[[number integerValue]] = @([array[[number integerValue]] integerValue]+1);
    }
    
    for (int k=0;k<array.count;k++) {
        NSNumber *value = array[k];
        for(int i=0;i<[value integerValue];i++){
            NSLog(@"%d",k);
        }
    }
}
@end
