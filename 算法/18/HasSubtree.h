//
//  HasSubtree.h
//  算法
//
//  Created by user on 16/2/9.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct Tree{
    int value;
    struct Tree *left;
    struct Tree *right;
}Tree;

@interface HasSubtree : NSObject

@end
