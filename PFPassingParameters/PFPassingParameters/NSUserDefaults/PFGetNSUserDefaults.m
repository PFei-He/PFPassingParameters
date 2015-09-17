//
//  PFGetNSUserDefaults.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetNSUserDefaults.h"

@implementation PFGetNSUserDefaults

//获取用户数据
- (void)getNSUserDefaults
{
    NSLog(@"%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"string"]);

    //移除用户数据
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"string"];

    //同步用户数据
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
