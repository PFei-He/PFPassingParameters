//
//  PFSingleton.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSingleton.h"

@implementation PFSingleton

@synthesize string      = _string;
@synthesize array       = _array;
@synthesize dictionary  = _dictionary;

/*
 //普通单例
 + (PFSingleton *)sharedInstance
 {
    static PFSingleton *sharedInstance = nil;

    if (!sharedInstance) {
        sharedInstance = [[self alloc] init];
    }
    return sharedInstance;
 }
 */

/*
 //GCD线程单例
 + (PFSingleton *)sharedInstance
 {
    static PFSingleton *sharedInstance = nil;
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        sharedInstance = [[self alloc] init];
    });
    return sharedInstance;
 }
 */

//同步锁单例
+ (PFSingleton *)sharedInstance
{
    static PFSingleton *sharedInstance = nil;

    @synchronized(self)
    {
        if (!sharedInstance) {
            sharedInstance = [[self alloc] init];
        }
        return sharedInstance;
    }
}

@end
