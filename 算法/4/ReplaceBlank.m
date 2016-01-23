//
//  ReplaceBlank.m
//  算法
//
//  Created by user on 16/1/20.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "ReplaceBlank.h"

@implementation ReplaceBlank

+ (NSString *)replaceBlankWithChar:(char *)string{
    
    int length=0,blankNumber=0;
    char newString[20];
    while (string[length]!='\0') {
        if (string[length]==' ') blankNumber++;
        length++;
    }

    int allLength = length + blankNumber*2;
    while (length>0) {
        if (string[length-1] == ' ') {
            NSLog(@"--");
            newString[allLength-1]='%';
            allLength--;
            newString[allLength-1]='0';
            allLength--;
            newString[allLength-1]='2';
            
        }else{
            NSLog(@"%d",allLength);;
            newString[allLength-1] = string[length-1];
        }
        allLength--;
        length--;
        
    }

        NSLog(@"%c",newString[1]);
    return [NSString stringWithUTF8String:newString];
}


void replaceBlank(char *string,int length){
    char a2[2];
    a2[1] = '2';
}

@end
