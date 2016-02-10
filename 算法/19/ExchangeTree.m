//
//  ExchangeTree.m
//  算法
//
//  Created by user on 16/2/10.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "ExchangeTree.h"

@implementation ExchangeTree
+ (Tree *)exchangeTree:(Tree *)tree{
    if(tree == NULL) return NULL;
    if (tree->left && tree->right==NULL) return NULL;
    
    Tree *tmp = tree->left;
    tree->left = tree->right;
    tree->right = tmp;
    
    if (tree->left) [ExchangeTree exchangeTree:tree->left];
    if (tree->right) [ExchangeTree exchangeTree:tree->right];
    
    return tree;
}
@end
