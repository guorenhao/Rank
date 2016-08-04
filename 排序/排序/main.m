//
//  main.m
//  排序
//
//  Created by 郭人豪 on 16/7/5.
//  Copyright © 2016年 Abner_G. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSArray * array = @[@"1", @"2", @"3", @"4", @"5"];
        
        NSMutableArray * arr = [NSMutableArray arrayWithArray:array];
        //冒泡
        for (int i = 0; i < arr.count; i++) {
            
            for (int j = 0; j < arr.count - 1 - i; j++) {
                
                if ([arr[j] intValue] < [arr[j+1] intValue]) {
                    
                    [arr exchangeObjectAtIndex:j withObjectAtIndex:j+1];
                }
            }
        }
        
        NSLog(@"%@",arr);
        
        //选择
        for (int i = 0; i < arr.count - 1; i++) {
            
            for (int j = i+1; j < arr.count; j++) {
                
                if ([arr[i] intValue] > [arr[j] intValue]) {
                    
                    [arr exchangeObjectAtIndex:i withObjectAtIndex:j];
                }
            }
        }
        
        NSLog(@"%@",arr);
        
        
        
        NSLog(@"--------");
        
        
    }
    return 0;
}
