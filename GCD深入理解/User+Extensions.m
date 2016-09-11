//
//  User+Extensions.m
//  GCD深入理解
//
//  Created by 蔡源泽 on 16/9/11.
//  Copyright © 2016年 蔡源泽. All rights reserved.
//

#import "User+Extensions.h"
#import <objc/runtime.h>

@implementation User (Extensions)
static char userAgeKey;

-(NSString *)userAge{
    return objc_getAssociatedObject(self,&userAgeKey);
}

-(void)setUserAge:(NSString *)userAge{
    objc_setAssociatedObject(self, &userAgeKey, userAge, OBJC_ASSOCIATION_COPY);
}


@end
