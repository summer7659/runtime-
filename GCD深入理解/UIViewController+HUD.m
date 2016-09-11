//
//  UIViewController+HUD.m
//  GCD深入理解
//
//  Created by 蔡源泽 on 16/9/11.
//  Copyright © 2016年 蔡源泽. All rights reserved.
//

#import "UIViewController+HUD.h"
#import <objc/runtime.h>

static const void * httpReaHud = &httpReaHud;

@implementation UIViewController (HUD)

-(MBProgressHUD *)hud{
    return objc_getAssociatedObject(self, httpReaHud);
}

-(void)setHud:(MBProgressHUD *)hud{
    objc_setAssociatedObject(self, httpReaHud, hud, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(void)showHudInView:(UIView *)view hint:(NSString *)hint{
    MBProgressHUD *HUD = [[MBProgressHUD alloc] initWithView:view];
    HUD.label.text = hint;
    [view addSubview:HUD];
    [HUD showAnimated:YES];
    [self setHud:HUD];
}

@end
