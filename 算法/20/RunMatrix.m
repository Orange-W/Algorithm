//
//  RunMatrix.m
//  算法
//
//  Created by user on 16/2/10.
//  Copyright © 2016年 mredrock. All rights reserved.
//

#import "RunMatrix.h"

@implementation RunMatrix

+ (void)run{
    [[RunMatrix new] runMatrix];
}

- (NSArray *)array{
    return @[
             @[@1 ,@2 ,@3 ,],
             @[@4 ,@5 ,@6 ,],
             @[@7 ,@8 ,@9 ,],
             @[@10,@11,@12,],
             ];
}

- (void)runMatrix{
    int row = (int)[self array].count-1;
    int col = (int)[[[self array] firstObject] count]-1;
    int indexRow = 0;
    int indexCol = 0;
    while (row>=indexRow || col>=indexRow) {
        for (int i = indexCol; i<=col; i++) {
            NSLog(@"%@",[self array][indexRow][i]);
        }
        indexRow++;
        
        for (int i = indexRow; i<=row; i++) {
            NSLog(@"%@",[self array][i][col]);
        }
        col--;
        
        for (int i = col; i>=indexCol; i--) {
            NSLog(@"%@",[self array][row][i]);
        }
        row--;
        
        for (int i = row; i>=indexRow; i--) {
            NSLog(@"%@",[self array][i][indexCol]);
        }
        indexCol++;
    }
}

@end
