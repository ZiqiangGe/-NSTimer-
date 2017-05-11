//
//  NSTimer+EOCBlockSupport.h
//  NSTimer循环引用
//
//  Created by yujibo on 2017/5/11.
//  Copyright © 2017年 yujibo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (EOCBlockSupport)

+ (NSTimer*)eoc_scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                         block:(void(^)())block
                                       repeats:(BOOL)repeats;

@end
