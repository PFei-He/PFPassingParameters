//
//  PFSetNotification.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetNotification.h"

@implementation PFSetNotification

//设置通知
- (void)setNotification
{
    //发送通知
    [[NSNotificationCenter defaultCenter] postNotificationName:@"NOTIFICATION" object:@"string"];
}

@end
