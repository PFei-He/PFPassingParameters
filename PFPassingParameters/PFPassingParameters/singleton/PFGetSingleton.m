//
//  PFGetSingleton.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetSingleton.h"
#import "PFSetSingleton.h"

@implementation PFGetSingleton

//饮水
- (void)drink
{
    //获取装满水的杯子
    NSLog(@"%@", [PFSetSingleton sharedInstance].string);
}

@end
