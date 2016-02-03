//
//  DeleteLink.m
//  算法
//
//  Created by user on 16/2/3.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "DeleteLink.h"

@implementation DeleteLink
/**
 *  @author Orange-W, 16-02-04 06:02:18
 *
 *  @brief O(1)复杂度删除节点
 */
+ (bool)deleteLink:(Link *)deleteLink withHeadLink:(Link *)headLink{
    if (!deleteLink || !headLink) {
        return NO;
    }
    
    if (deleteLink->next!=NULL) {
        Link *tmpNextLink = deleteLink->next;
        deleteLink->value = tmpNextLink->value;
        deleteLink->next = tmpNextLink->next;
        tmpNextLink = nil;
    }else if(deleteLink == headLink){
        headLink = NULL;
        deleteLink = NULL;
        return YES;
    }else{
        Link *tmpLink = headLink;
        while (tmpLink->next && tmpLink->next != deleteLink) {
            tmpLink = tmpLink->next;
        }
        
        if (tmpLink->next == deleteLink) {
            tmpLink->next = NULL;
            return YES;
        }else{
            return NO;
        }
    }
    return NO;
}

+ (void)printAllLink:(Link *)head{
    while (head->next) {
        NSLog(@"%d",head->value);
        head=head->next;
    }
//    NSLog(@"%d",head->value);
}
@end
