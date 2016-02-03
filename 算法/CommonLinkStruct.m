//
//  CommonLinkStruct.m
//  算法
//
//  Created by user on 16/2/4.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "CommonLinkStruct.h"

@implementation CommonLinkStruct

+ (Link *)commonLinkFastInstance{
    Link *head = malloc(sizeof(Link));
    Link *deleteLink = NULL;
    Link *tmp = head;
    for (int i=0; i<10; i++) {
        tmp->value = i;
        if (i==6) {
            deleteLink = tmp;
        }
        tmp->next = malloc(sizeof(Link));
        tmp=tmp->next;
        tmp->next = NULL;
    }
    return head;
}

@end