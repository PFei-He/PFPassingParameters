//
//  PFGetNotification.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetNotification.h"

@implementation PFGetNotification

//获取通知
- (void)getNotification
{
    //注册监听者（必须先注册监听者，再传值）
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleNotification:) name:@"string" object:nil];
}

//管理通知
- (void)handleNotification:(NSNotification *)notification
{
    NSLog(@"%@", notification.object);
}

- (void)dealloc
{
    //移除通知
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
