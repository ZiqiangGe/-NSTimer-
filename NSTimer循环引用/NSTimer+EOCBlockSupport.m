//
//  NSTimer+EOCBlockSupport.m
//  NSTimer循环引用
//
//  Created by yujibo on 2017/5/11.
//  Copyright © 2017年 yujibo. All rights reserved.
//

#import "NSTimer+EOCBlockSupport.h"

@implementation NSTimer (EOCBlockSupport)

+ (NSTimer*)eoc_scheduledTimerWithTimeInterval:(NSTimeInterval)interval
                                         block:(void(^)())block
                                       repeats:(BOOL)repeats
{
    return [self scheduledTimerWithTimeInterval:interval target:self selector:@selector(eoc_blockInvoke:) userInfo:[block copy] repeats:repeats];
}

+(void)eoc_blockInvoke:(NSTimer*)timer
{
    void (^block)() = timer.userInfo;
    if (block) {
        block();
    }
}

@end
