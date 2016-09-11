//
//  ViewController.m
//  GCD深入理解
//
//  Created by 蔡源泽 on 16/9/11.
//  Copyright © 2016年 蔡源泽. All rights reserved.
//

#import "ViewController.h"
#import "SecViewController.h"
#import "UIViewController+HUD.h"
#import "User.h"
#import "User+Extensions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    SecViewController *sec = [[SecViewController alloc] init];
    [self showHudInView:self.view hint:@"qwe"];
    
    User *user = [[User alloc] init];
//    user.userName
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
