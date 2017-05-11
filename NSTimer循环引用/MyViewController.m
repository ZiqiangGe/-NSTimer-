//
//  MyViewController.m
//  NSTimer循环引用
//
//  Created by yujibo on 2017/5/11.
//  Copyright © 2017年 yujibo. All rights reserved.
//

#import "MyViewController.h"
#import "NSTimer+EOCBlockSupport.h"

@interface MyViewController ()

/** 定时器 */
@property (nonatomic , strong) NSTimer* timer;

@end

@implementation MyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    __weak MyViewController*weakSelf = self;
    self.timer = [NSTimer eoc_scheduledTimerWithTimeInterval:1 block:^{
        [weakSelf printSomething];
    } repeats:YES];
}

-(void)printSomething
{
    NSLog(@"Hello world");
}




@end
