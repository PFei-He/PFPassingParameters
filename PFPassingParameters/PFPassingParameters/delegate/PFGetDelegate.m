//
//  PFGetDelegate.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetDelegate.h"

@implementation PFGetDelegate

//饮水
- (void)drink
{
    //找到管理员并与其签订租用协议
    PFSetDelegate *manager = [[PFSetDelegate alloc] init];
    manager.delegate = self;
    
    //交回协议
    [manager callback];
}

//装水
- (void)put:(NSString *)water
{
    NSLog(@"%@", water);
}

@end
