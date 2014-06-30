//
//  PFGetSingleton.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetSingleton.h"
#import "PFSingleton.h"
#import "PFSingletonWithMarco.h"

@implementation PFGetSingleton

//获取单例的实例方法
- (void)getSingleton
{
    //调用单例的全局变量
    NSLog(@"==========singleton==========:%@", [PFSingleton sharedInstance]->string);
    NSLog(@"==========singleton==========:%@", [PFSingleton sharedInstance]->array);
    NSLog(@"==========singleton==========:%@", [PFSingleton sharedInstance]->dictionary);

    //调用单例的属性
    NSLog(@"==========singleton==========:%@", [PFSingleton sharedInstance].string);
    NSLog(@"==========singleton==========:%@", [PFSingleton sharedInstance].array);
    NSLog(@"==========singleton==========:%@", [PFSingleton sharedInstance].dictionary);

    NSLog(@"==========singleton==========:%@", [PFSingletonWithMarco sharedInstance].str);
    NSLog(@"==========singleton==========:%@", [PFSingletonWithMarco sharedInstance].mutableStr);

    NSLog(@"==========singleton==========:%@", [PFSingletonWithMarco sharedInstance].arr);
    NSLog(@"==========singleton==========:%@", [PFSingletonWithMarco sharedInstance].mutableArr);

    NSLog(@"==========singleton==========:%@", [PFSingletonWithMarco sharedInstance].dic);
    NSLog(@"==========singleton==========:%@", [PFSingletonWithMarco sharedInstance].mutableDic);
}

//获取单例的类方法
+ (void)getSingleton
{
    //调用单例的全局变量
    NSLog(@"==========singleton==========:%@", [PFSingleton sharedInstance]->string);
    NSLog(@"==========singleton==========:%@", [PFSingleton sharedInstance]->array);
    NSLog(@"==========singleton==========:%@", [PFSingleton sharedInstance]->dictionary);

    //调用单例的属性
    NSLog(@"==========singleton==========:%@", [PFSingleton sharedInstance].string);
    NSLog(@"==========singleton==========:%@", [PFSingleton sharedInstance].array);
    NSLog(@"==========singleton==========:%@", [PFSingleton sharedInstance].dictionary);

    NSLog(@"==========singleton==========:%@", [PFSingletonWithMarco sharedInstance].str);
    NSLog(@"==========singleton==========:%@", [PFSingletonWithMarco sharedInstance].mutableStr);

    NSLog(@"==========singleton==========:%@", [PFSingletonWithMarco sharedInstance].arr);
    NSLog(@"==========singleton==========:%@", [PFSingletonWithMarco sharedInstance].mutableArr);

    NSLog(@"==========singleton==========:%@", [PFSingletonWithMarco sharedInstance].dic);
    NSLog(@"==========singleton==========:%@", [PFSingletonWithMarco sharedInstance].mutableDic);
}

@end
