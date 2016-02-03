
//  Reoder.h
//  算法
//
//  Created by user on 16/2/3.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Reoder : NSObject
typedef bool (^Judge)(id);
+ (void)reorderArray:(NSMutableArray *)array withJudgeBlock:(Judge)block;
@end
