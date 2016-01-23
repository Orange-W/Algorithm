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
    return @[self.preorderArray[2],
             self.preorderArray[3],
             self.preorderArray[1],
             self.preorderArray[0],
             self.preorderArray[5],
             self.preorderArray[4],
             self.preorderArray[7],
             self.preorderArray[6]];
}

/**
 *  @author Orange-W, 16-01-24 03:01:49
 *
 *  @brief 构建二叉树
 *  @param lengthStart 左子树开始
 *  @param lenghtEnd   左子树结束
 *  @param inorderStart  右子树开始
 *  @param inorderEnd    右子树结束
 *  @return 节点
 */
- (ORMBinaryTree *)contructTreepreorderStart:(NSInteger)preorderStart
                                 preorderEnd:(NSInteger)preorderEnd
                                inorderStart:(NSInteger)inorderStart
                                  inorderEnd:(NSInteger)inorderEnd{
    
    if (preorderEnd<preorderStart
        || inorderEnd<inorderStart
        || preorderStart<0
        || inorderStart<0) {
        return NULL;
    }
    //根节点
    ORMBinaryTree *root = (ORMBinaryTree *)malloc(sizeof(ORMBinaryTree));
    root->value = (int)[self.preorderArray[preorderStart] integerValue];
    root->leftTree = root->rightTree = NULL;
    
    if (preorderStart == preorderEnd) {
        if (inorderStart == inorderEnd && self.preorderArray[preorderStart]==self.inorderArray[preorderStart]) {
            return root;
        }else{
            return NULL;
        }
    }
    
    int rootInorderIndex=0;
    while (rootInorderIndex<self.inorderArray.count
           && self.preorderArray[preorderStart] != self.inorderArray[rootInorderIndex]
           ) {
        
        rootInorderIndex++;
    }
//    NSLog(@"%p-%p",self.preorderArray[6],self.inorderArray[7]);
    NSInteger length = rootInorderIndex - inorderStart;
    //左子树
    if (length>0) {
        
        NSInteger preLeftStart = preorderStart+1,
                    preLeftEnd = preorderStart+length,
                   inLeftStart = inorderStart,
                     inLeftEnd = rootInorderIndex -1;
        NSLog(@"%d-%d-%d-%d",preLeftStart,preLeftEnd,inLeftStart,inLeftEnd);
        root->leftTree = [self contructTreepreorderStart:preLeftStart
                                              preorderEnd:preorderEnd
                                             inorderStart:inorderStart inorderEnd:inLeftEnd];
        
    }
    
    
    return root;
}

+ (ORMBinaryTree *)construct{
    ConstructBinaryTree *constructTree =[[ConstructBinaryTree alloc] init];
    return [constructTree contructTreepreorderStart:0
                                 preorderEnd:[constructTree preorderArray].count
                                inorderStart:0
                                  inorderEnd:[constructTree inorderArray].count];
    
}

@end
