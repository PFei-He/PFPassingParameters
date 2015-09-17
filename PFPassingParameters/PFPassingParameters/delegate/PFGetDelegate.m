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
    PFSetDelegate *set = [[PFSetDelegate alloc] init];
    
    //设置代理
    set.delegate = self;
    
    //代理回调
    [set callbackDelegate];
}

//代理方法（string）
- (void)delegateMethod:(NSString *)string
{
    NSLog(@"%@", string);
}

@end
