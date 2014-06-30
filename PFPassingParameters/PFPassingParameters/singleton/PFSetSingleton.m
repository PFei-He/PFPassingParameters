//
//  PFSetSingleton.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetSingleton.h"
#import "PFSingleton.h"
#import "PFSingletonWithMarco.h"

@implementation PFSetSingleton

//设置单例
- (void)setSingleton
{
    //全局变量的调用方法
    [PFSingleton sharedInstance]->string        = @"string";
    [PFSingleton sharedInstance]->array         = @[@"array"];
    [PFSingleton sharedInstance]->dictionary    = @{@"key": @"object"};

    //属性的调用方法
    [PFSingleton sharedInstance].string         = @"string";
    [PFSingleton sharedInstance].array          = @[@"array"];
    [PFSingleton sharedInstance].dictionary     = @{@"key": @"object"};

    [PFSingletonWithMarco sharedInstance].str = @"123";
    [PFSingletonWithMarco sharedInstance].mutableStr = [NSMutableString stringWithString:@"123"];

    [PFSingletonWithMarco sharedInstance].arr = @[@"123", @"456", @"789"];
    [PFSingletonWithMarco sharedInstance].mutableArr = [NSMutableArray arrayWithArray:@[@"123", @"456", @"789"]];

    [PFSingletonWithMarco sharedInstance].dic = @{@"first": @"123", @"second": @"456", @"third": @"789"};
    [PFSingletonWithMarco sharedInstance].mutableDic = [NSMutableDictionary dictionaryWithDictionary:@{@"first": @"123", @"second": @"456", @"third": @"789"}];
}

@end
