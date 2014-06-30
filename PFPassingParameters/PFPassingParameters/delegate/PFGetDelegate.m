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
- (void)setDelegateWithString:(NSString *)string
{
    NSLog(@"==========delegate==========:%@", string);
}

//代理方法（array）
- (void)setDelegateWithArray:(NSArray *)array
{
    NSLog(@"==========delegate==========:%@", array);
}

//代理方法（dictionary）
- (void)setDelegateWithDictionary:(NSDictionary *)dictionary
{
    NSLog(@"==========delegate==========:%@", dictionary);
}

//代理方法（string, array, dictionary）
- (void)setDelegateWithString:(NSString *)string array:(NSArray *)array dictionary:(NSDictionary *)dictionary
{
    NSLog(@"==========delegate==========:%@\n%@\n%@", string, array, dictionary);
}

@end
