//
//  FindDescLink.m
//  算法
//
//  Created by user on 16/2/4.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "FindDescLink.h"


@implementation FindDescLink
/**
 *  @author Orange-W, 16-02-04 06:02:54
 *
 *  @brief 寻找链表中倒数第 k 个元素
 */
+ (Link *)findDescLinkNumber:(NSInteger)number head:(Link *)head{
    
    if (number <= 0) {
        return NULL;
    }
    
    Link *first = head;
    Link *second = head;
    int i=0;
    while (i<number && first->next) {
        first = first->next;
        i++;
    }
    
    if (i == number) {
        while (first->next) {
            first = first->next;
            second = second->next;
        }
        return second;
    }
    
    return NULL;
}
@end
