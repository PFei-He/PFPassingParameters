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
    NSString *string = @"string";
    [PFNotification postNotificationName:@"string" object:string];
    
    NSArray *array = @[@"array"];
    [PFNotification postNotificationName:@"array" object:array];
    
    NSDictionary *dictionary = @{@"key": @"object"};
    [PFNotification postNotificationName:@"dictionary" object:dictionary];
}

@end
