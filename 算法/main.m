//
//  main.m
//  算法
//
//  Created by user on 16/1/19.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SingleMode.h"
#import "FindNumberFromArray.h"
#import "ReplaceBlank.h"
#import "PrintLinkDesc.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //1.单例模式
        //[SingleMode testSigleMode];
        
        //3.二维数组中查找
        //NSLog(@"%@",[FindNumberFromArray findNumber:5]?@"找到":@"没找到");
        
        //4.替换空格(C 语言)
        //NSLog(@"%@",[ReplaceBlank replaceBlankWithChar:"We are happy!"]);
        
        //5.从尾到头输出链表
        [[[PrintLinkDesc alloc] init] printLinkDesc];
        
    }
    return 0;
}
