//
//  PFGetNSUserDefaults.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetNSUserDefaults.h"
#import "PFUserDefaults.h"

@implementation PFGetNSUserDefaults

//获取用户数据
- (void)getNSUserDefaults
{
    NSLog(@"==========NSUserDefaults==========:%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"string"]);
    NSLog(@"==========NSUserDefaults==========:%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"array"]);
    NSLog(@"==========NSUserDefaults==========:%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"dictionary"]);

    NSLog(@"==========PFUserDefaults==========:%@", [PFUserDefaults objectForKey:@"string"]);
    NSLog(@"==========PFUserDefaults==========:%@", [PFUserDefaults objectForKey:@"array"]);
    NSLog(@"==========PFUserDefaults==========:%@", [PFUserDefaults objectForKey:@"dictionary"]);

    //移除用户数据
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"string"];
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"array"];
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"dictionary"];

    //同步用户数据
    [[NSUserDefaults standardUserDefaults] synchronize];

    //移除用户数据
    [PFUserDefaults removeObjectForKey:@"string"];
    [PFUserDefaults removeObjectForKey:@"array"];
    [PFUserDefaults removeObjectForKey:@"dictionary"];

    NSLog(@"==========NSUserDefaults==========:%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"string"]);
    NSLog(@"==========NSUserDefaults==========:%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"array"]);
    NSLog(@"==========NSUserDefaults==========:%@", [[NSUserDefaults standardUserDefaults] objectForKey:@"dictionary"]);

    NSLog(@"==========PFUserDefaults==========:%@", [PFUserDefaults objectForKey:@"string"]);
    NSLog(@"==========PFUserDefaults==========:%@", [PFUserDefaults objectForKey:@"array"]);
    NSLog(@"==========PFUserDefaults==========:%@", [PFUserDefaults objectForKey:@"dictionary"]);
}

@end
