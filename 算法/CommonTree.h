//
//  CommonTree.h
//  算法
//
//  Created by user on 16/2/10.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct tree{
    struct tree *left;
    struct tree *right;
    int value;
}Tree;

@interface CommonTree : NSObject

@end
