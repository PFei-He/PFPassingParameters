//
//  PFSetNSUserDefaults.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetNSUserDefaults.h"

@implementation PFSetNSUserDefaults

//设置用户数据
- (void)setNSUserDefaults
{
    //添加用户数据
    [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"string"] forKey:@"string"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSArray arrayWithObjects:@"array", nil] forKey:@"array"];
    [[NSUserDefaults standardUserDefaults] setObject:[NSDictionary dictionaryWithObjectsAndKeys:@"object", @"key", nil] forKey:@"dictionary"];
    
    //同步用户数据
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
