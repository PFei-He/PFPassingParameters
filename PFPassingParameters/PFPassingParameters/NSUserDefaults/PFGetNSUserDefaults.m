//
//  PFGetNSUserDefaults.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetNSUserDefaults.h"

@implementation PFGetNSUserDefaults

//饮水
- (void)drink
{
    //获取装满水的杯子
    NSLog(@"%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"cup"]);

    //归还杯子（其实是毁掉）
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"cup"];

    //记录事件
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
