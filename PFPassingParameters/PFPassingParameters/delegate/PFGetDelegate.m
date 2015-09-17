//
//  PFGetDelegate.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetDelegate.h"

@implementation PFGetDelegate

//获取代理
- (void)getDelegate
{
    //找到管理员并签订协议
    PFSetDelegate *set = [[PFSetDelegate alloc] init];
    set.delegate = self;
    
    //把协议交回管理员
    [set callbackDelegate];
}

//拿回杯子和饮品
- (void)setDelegate:(NSString *)string
{
    //饮水
    NSLog(@"%@", string);
}

@end
