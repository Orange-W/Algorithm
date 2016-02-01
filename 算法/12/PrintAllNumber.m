//
//  PrintAllNumber.m
//  算法
//
//  Created by user on 16/2/2.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "PrintAllNumber.h"

@implementation PrintAllNumber
/**
 *  @author Orange-W, 16-02-02 04:02:27
 *
 *  @brief 输入 n ,从0输出到 n 位的9
 */

+ (void)printAllNumberWithDigit:(NSInteger)digit{
    NSMutableString *string = [NSMutableString stringWithCharacters:(const unichar *)"" length:digit];
    [[PrintAllNumber new] setNumberWithString:string fullDigit:digit nowIndex:0];
}

- (void)setNumberWithString:(NSMutableString *) string
                fullDigit:(NSInteger) full
                 nowIndex:(NSInteger) index{
    if (index == full) {
        int k=0;
        //前端的0替换为空格
        while ([[string substringFromIndex:k] hasPrefix:@"0"]) {
            [string replaceCharactersInRange:NSMakeRange(k, 1) withString:@" "];
            k++;
        }
        NSLog(@"%@",string);
        return;
    }
    
    int i=0;
    for (; i<10; i++) {
        [string replaceCharactersInRange:NSMakeRange(index, 1) withString:[NSString stringWithFormat:@"%d",i]];
        [self setNumberWithString:string fullDigit:full nowIndex:index+1];
    }
    
}

@end
