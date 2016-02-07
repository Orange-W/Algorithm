//
//  MergeLink.m
//  算法
//
//  Created by user on 16/2/7.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "MergeLink.h"

@implementation MergeLink

+ (Link *)mergeLinkWithFirst:(Link *)first second:(Link *)second{
    if (first == second) {
        return first;
    }
    if (first == NULL) {
        return second;
    }
    if (second == NULL) {
        return first;
    }
    
    Link *mergeHead = malloc(sizeof(Link));
    Link *mergeLink = mergeHead;
    mergeLink->value = 0;
    while (first->next != NULL && second->next != NULL && first != second) {
        
        if (first->value < second->value) {
            mergeLink->next = first;
            first = first->next;
        }else{
            mergeLink->next = second;
            second = second->next;
        }
        mergeLink = mergeLink->next;
    }

    mergeLink->next = first!=NULL?first:second;
    return mergeHead->next;
}
@end
