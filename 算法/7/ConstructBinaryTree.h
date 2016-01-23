//
//  ConstructBinaryTree.h
//  算法
//
//  Created by user on 16/1/24.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef struct BinaryTree{
    int value;
    struct BinaryTree *leftTree;
    struct BinaryTree *rightTree;
}ORMBinaryTree;

@interface ConstructBinaryTree : NSObject
+ (ORMBinaryTree *)construct;
- (ORMBinaryTree *)contructTreepreorderStart:(NSInteger)preorderStart
                                 preorderEnd:(NSInteger)preorderEnd
                                inorderStart:(NSInteger)inorderStart
                                  inorderEnd:(NSInteger)inorderEnd;

@end
