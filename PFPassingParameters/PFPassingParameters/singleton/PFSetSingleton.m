//
//  PFSetSingleton.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetSingleton.h"

@implementation PFSetSingleton

//装水
- (void)put
{
    //给杯子里装水
    [PFSetSingleton sharedInstance].string = @"string";
}

/*
//普通单例
+ (PFSetSingleton *)sharedInstance
{
    static PFSetSingleton *sharedInstance = nil;
    if (!sharedInstance) {
        sharedInstance = [[self alloc] init];
    }
    return sharedInstance;
}
*/

/*
//GCD线程单例
+ (PFSetSingleton *)sharedInstance
{
    static PFSetSingleton *sharedInstance = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
}
*/

//同步锁单例
+ (PFSetSingleton *)sharedInstance
{
    static PFSetSingleton *sharedInstance = nil;
    
    @synchronized(self) {
        if (!sharedInstance) {
            sharedInstance = [[self alloc] init];
        }
        return sharedInstance;
    }
}

@end
