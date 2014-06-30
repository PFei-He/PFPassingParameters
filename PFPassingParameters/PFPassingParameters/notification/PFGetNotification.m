//
//  PFGetNotification.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetNotification.h"
#import "PFNotification.h"

@implementation PFGetNotification

//获取通知
- (void)getNotification
{
    //注册监听者（必须先注册监听者，再传值）
    [PFNotification addObserver:self selector:@selector(handleNotification:) name:@"string"];
    [PFNotification addObserver:self selector:@selector(handleNotification:) name:@"array"];
    [PFNotification addObserver:self selector:@selector(handleNotification:) name:@"dictionary"];
}

//管理通知
- (void)handleNotification:(NSNotification *)notification
{
    NSLog(@"==========notification==========:%@", notification.object);
}

- (void)dealloc
{
    //移除通知
    [PFNotification removeObserver:self];
}

@end
