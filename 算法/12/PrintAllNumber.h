//
//  PrintAllNumber.h
//  算法
//
//  Created by user on 16/2/2.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PrintAllNumber : NSObject
+ (void)printAllNumberWithDigit:(NSInteger)digit;
-(void)setNumberWithString:(NSMutableString *)string
                fullDigit:(NSInteger) full
                 nowIndex:(NSInteger) index;



@end
