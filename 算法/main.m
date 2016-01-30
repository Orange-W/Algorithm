//
//  main.m
//  算法
//
//  Created by user on 16/1/19.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SingleMode.h"
#import "TubSort.h"
#import "FindNumberFromArray.h"
#import "ReplaceBlank.h"
#import "PrintLinkDesc.h"
#import "ConstructBinaryTree.h"
#import "FastSort.h"
#import "SmallestRotateNumber.h"
#import "Fibonacci.h"
#import "FindOneNumber.h"
#import "IntegerPower.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.单例模式
        //[SingleMode testSigleMode];
        
        //2.桶排序
        //[TubSort tubSort];
        
        //3.二维数组中查找
        //NSLog(@"%@",[FindNumberFromArray findNumber:5]?@"找到":@"没找到");
        
        //4.替换空格(C 语言)
        //NSLog(@"%@",[ReplaceBlank replaceBlankWithChar:"We are happy!"]);
        
        //5.从尾到头输出链表
        //[[[PrintLinkDesc alloc] init] printLinkDesc];
        
        
        //6.重建二叉树
        //[ConstructBinaryTree construct];
        
        //7.快速排序
        //[FastSort fastSortWithArray:[@[@2,@4,@1,@5,@3,@98,@16,@25,@44,@34,@77,@42,@13,@2,@4,@5,@13,@77] mutableCopy]];
        
        //8.最小旋转数
        //NSLog(@"%ld",[SmallestRotateNumber smallestEotateNumberFindWithArray:@[@1,@1,@2,@2,@2,@0,@1,@1,@1,@1]]);
        
        //9.斐波那契
        //NSLog(@"%ld",[Fibonacci fibonacciInNumber:8]);
        
        //10.输出数字里的二进制数1的个数
        //NSLog(@"%ld",(long)[FindOneNumber findOneNumberWithNumber:-8]);
        
        //11.整数次方
        NSLog(@"%lf",[IntegerPower integerPowerWithDouble:2 exponent:7]);
        
    }
    return 0;
}
