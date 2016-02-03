//
//  DeleteLink.h
//  算法
//
//  Created by user on 16/2/3.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CommonLinkStruct.h"
@interface DeleteLink : NSObject
+ (bool)deleteLink:(Link *)deleteLink withHeadLink:(Link *)headLink;
+ (void)printAllLink:(Link *)head;



@end
