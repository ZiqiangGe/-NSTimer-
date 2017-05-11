//
//  ViewController.m
//  NSTimer循环引用
//
//  Created by yujibo on 2017/5/11.
//  Copyright © 2017年 yujibo. All rights reserved.
//

#import "ViewController.h"
#import "MyViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    MyViewController*vc = [MyViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
