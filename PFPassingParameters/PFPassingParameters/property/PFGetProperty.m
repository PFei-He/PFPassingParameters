//
//  PFGetProperty.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetProperty.h"
#import "PFSetProperty.h"

@implementation PFGetProperty

//饮水
- (void)drink
{
    //找到管理员并让它装水
    PFSetProperty *manager = [[PFSetProperty alloc] init];
    [manager put];
    
    //获取装满水的杯子
    NSLog(@"%@", manager.cup);
}

@end
