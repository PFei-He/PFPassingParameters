//
//  PFUserDefaults.m
//  PFPassingParameters
//
//  Created by PFei_He on 14-7-3.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFUserDefaults.h"

@implementation PFUserDefaults

- (id)objectForKey:(NSString *)defaultName
{
    if (defaultName == nil)
        return nil;
    return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}

+ (id)objectForKey:(NSString *)defaultName
{
    if (defaultName == nil)
        return nil;
    return [[NSUserDefaults standardUserDefaults] objectForKey:defaultName];
}

- (void)setObject:(id)value forKey:(NSString *)defaultName
{
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)setObject:(id)value forKey:(NSString *)defaultName
{
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)removeObjectForKey:(NSString *)defaultName
{
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)removeObjectForKey:(NSString *)defaultName
{
    [[NSUserDefaults standardUserDefaults] removeObjectForKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

- (void)resetStandardUserDefaults
{
    [NSUserDefaults resetStandardUserDefaults];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

+ (void)resetStandardUserDefaults
{
    [NSUserDefaults resetStandardUserDefaults];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
