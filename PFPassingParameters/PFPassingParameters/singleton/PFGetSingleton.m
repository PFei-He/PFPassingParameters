//
//  PFGetSingleton.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetSingleton.h"
#import "PFSetSingleton.h"

@implementation PFGetSingleton

//获取单例的实例方法
- (void)getSingleton
{
    //调用单例的属性
    NSLog(@"%@", [PFSetSingleton sharedInstance].string);
}

@end
