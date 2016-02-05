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
    Link *head = (Link *)malloc(sizeof(Link));
    Link *tmp = head;
    for (int i=0; i<10; i++) {
        tmp->value = i;
        tmp->next = malloc(sizeof(Link));
        tmp=tmp->next;
        tmp->next = NULL;
    }
    return head;
}

+ (void)printLink:(Link *)head{
    Link *tmpLink = head;
    while (tmpLink->next != NULL) {
        NSLog(@"%d",tmpLink->value);
        tmpLink = tmpLink->next;
    }
}

@end