//
//  PrintLinkDesc.m
//  算法
//
//  Created by user on 16/1/21.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "PrintLinkDesc.h"

typedef struct Link{
    int value;
    struct Link *next;
}ASCLink;
@interface PrintLinkDesc()
{
    ASCLink *_headPoint;
}


@end

@implementation PrintLinkDesc

/**
 *  @author Orange-W, 16-01-22 21:01:21
 *
 *  @brief 反向输出一个单向链表
 */


- (instancetype)init{
    _headPoint = (ASCLink *)malloc(sizeof(ASCLink));
    ASCLink *nowPoint = _headPoint;
    for (int i=0; i<10;) {
        ASCLink *nextPoint  = (ASCLink *)malloc(sizeof(ASCLink));
        nowPoint->value = ++i;
        nowPoint->next = nextPoint;
        nowPoint = nextPoint;
        nextPoint = NULL;
    }
//    NSLog(@"%d",nowPoint->value);
    return self;
}

- (void)printLinkDesc{
    ASCLink *nowPoint = _headPoint;
    NSMutableArray *descArray = [NSMutableArray array];
    while (nowPoint != NULL && nowPoint->value !=0) {
//        NSLog(@"%d",nowPoint->value);
        [descArray addObject:@(nowPoint->value)];
        nowPoint = nowPoint->next;
    }
    
    [descArray enumerateObjectsWithOptions:NSEnumerationReverse usingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSLog(@"%ld",[obj integerValue]);
    }];
}

@end
