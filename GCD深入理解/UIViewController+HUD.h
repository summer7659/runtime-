//
//  UIViewController+HUD.h
//  GCD深入理解
//
//  Created by 蔡源泽 on 16/9/11.
//  Copyright © 2016年 蔡源泽. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MBProgressHUD.h"

@interface UIViewController (HUD)

-(void)showHudInView:(UIView *)view
                hint:(NSString *)hint;

@end
