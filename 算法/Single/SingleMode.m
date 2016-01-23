//
//  SingleMode.m
//  算法
//
//  Created by user on 16/1/19.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "SingleMode.h"

@implementation SingleMode
+ (instancetype)singleModeShared{
    static SingleMode *single=nil;
    static dispatch_once_t onceToken;
    
    static int num=0;
    __block BOOL isNew;
    isNew = NO;
    
    dispatch_once(&onceToken, ^{
        single = [SingleMode new];
        isNew = YES;
    });
    
    num++;
    NSString *string = isNew?@"实例化了":@"使用之前实例化的单例";
    NSLog(@"%d:%@\n", num,string);
    return single;
}

+ (void)testSigleMode{
    [SingleMode singleModeShared];
    [SingleMode singleModeShared];
    [SingleMode singleModeShared];
}
@end
