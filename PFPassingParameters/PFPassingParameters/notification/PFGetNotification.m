//
//  PFGetNotification.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetNotification.h"

@implementation PFGetNotification

//等待茶水间发来消息
- (void)wait
{
    //打开广播，收听茶水间发来的消息
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getCup:) name:@"string" object:nil];
}

//到茶水间拿回装满水的杯子
- (void)getCup:(NSNotification *)cup
{
    NSLog(@"%@", cup.object);
}

- (void)dealloc
{
    //关闭广播
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
