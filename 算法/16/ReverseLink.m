//
//  ReverseLink.m
//  算法
//
//  Created by user on 16/2/6.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "ReverseLink.h"

@implementation ReverseLink

+ (Link *)reverseLinkWithHead:(Link *)head{
    if(!head){
        return NULL;
    }
    
    Link *nowLink = head;
    Link *nextLink = nowLink->next;
    
    Link *thirdLink = NULL;
    //xcode 会自动补一个指针
    thirdLink = malloc(sizeof(Link));
    thirdLink->value = head->value;

    
    while (nowLink->next) {
        nowLink->next = thirdLink;
        
        thirdLink = nextLink->next?:NULL;
        
        Link *tmpLink = nowLink;
        nowLink = nextLink;
        nextLink = thirdLink;
        thirdLink = tmpLink;
        
    }
    
    
    return thirdLink;
}
@end
