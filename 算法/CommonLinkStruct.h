//
//  CommonLinkStruct.h
//  算法
//
//  Created by user on 16/2/3.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct link{
    struct link *next;
    int value;
}Link;

@interface CommonLinkStruct : NSObject
+ (Link *)commonLinkFastInstance;

@end
