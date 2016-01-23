//
//  ConstructBinaryTree.m
//  算法
//
//  Created by user on 16/1/24.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "ConstructBinaryTree.h"

@interface ConstructBinaryTree()
@property (assign, readonly, nonatomic) NSArray *preorderArray;
@property (assign, readonly, nonatomic) NSArray *inorderArray;
@end

@implementation ConstructBinaryTree
/**
 *  @author Orange-W, 16-01-24 02:01:54
 *
 *  @brief 由前序遍历中序遍历,重新构建二叉树
 */

- (NSArray *)preorderArray{
    return @[@1,@2,@4,@7,@3,@5,@6,@8];
}

- (NSArray *)inorderArray{
    return @[@4,@7,@2,@1,@5,@3,@8,@6];
}

+ (void)construct{
    
}

@end
