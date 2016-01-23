//
//  FindNumberFromArray.h
//  算法
//
//  Created by user on 16/1/19.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FindNumberFromArray : NSObject
@property (readonly, nonatomic) NSArray* array;
+ (BOOL)findNumber:(NSInteger) number;
@end
