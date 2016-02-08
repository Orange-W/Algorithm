//
//  HasSubtree.m
//  算法
//
//  Created by user on 16/2/9.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "HasSubtree.h"

@implementation HasSubtree
/**
 *  @author Orange-W, 16-02-09 04:02:42
 *
 *  @brief 是否包含子二叉树
 */
- (BOOL)hasSubtreeWithBaseTree:(Tree *)baseTree subTree:(Tree *)subTree{
    
    BOOL result = NO;
    if (baseTree != NULL && subTree != NULL) {
        if (baseTree->value == subTree->value) {
            result = [self equitTree:baseTree otherTree:subTree];
        }
        
        if (!result) {
            [self hasSubtreeWithBaseTree:baseTree->left subTree:subTree];
        }
        
        if (!result) {
            [self hasSubtreeWithBaseTree:baseTree->right subTree:subTree];
        }
    }
    return NO;
}

- (BOOL)equitTree:(Tree *)tree otherTree:(Tree *)otherTree{
    if (otherTree == NULL) {
        return YES;
    }
    
    if (tree == NULL) {
        return NO;
    }
    
    if (tree->value != otherTree->value) {
        return NO;
    }
    
    return [self equitTree:tree->left otherTree:otherTree->left]
    && [self equitTree:tree->right otherTree:otherTree->right];
    
}
@end
