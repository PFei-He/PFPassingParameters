//
//  PFSetNSUserDefaults.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetNSUserDefaults.h"

@implementation PFSetNSUserDefaults

//装水
- (void)put
{
    //给杯子里装水
    [[NSUserDefaults standardUserDefaults] setObject:[NSString stringWithFormat:@"water"] forKey:@"cup"];
    
    //记录事件
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
