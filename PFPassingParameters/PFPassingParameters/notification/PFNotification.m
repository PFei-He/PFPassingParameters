//
//  PFNotification.m
//  PF_Passing_Parameters
//
//  Created by 飛Fei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFNotification.h"

@implementation PFNotification

@end

@implementation NSNotification (PFCategory)

/*
- (void)addObserver:(id)observer name:(NSString *)aName
{
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:nil name:aName object:nil];
}

+ (void)addObserver:(id)observer name:(NSString *)aName
{
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:nil name:aName object:nil];
}
 */

- (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName
{
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:aSelector name:aName object:nil];
}

+ (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName
{
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:aSelector name:aName object:nil];
}

- (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)anObject
{
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:aSelector name:aName object:anObject];
}

+ (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)anObject
{
    [[NSNotificationCenter defaultCenter] addObserver:observer selector:aSelector name:aName object:anObject];
}

- (void)postNotification:(NSNotification *)notification
{
    [[NSNotificationCenter defaultCenter] postNotification:notification];
}

+ (void)postNotification:(NSNotification *)notification
{
    [[NSNotificationCenter defaultCenter] postNotification:notification];
}

- (void)postNotificationName:(NSString *)aName object:(id)anObject
{
    [[NSNotificationCenter defaultCenter] postNotificationName:aName object:anObject];
}

+ (void)postNotificationName:(NSString *)aName object:(id)anObject
{
    [[NSNotificationCenter defaultCenter] postNotificationName:aName object:anObject];
}

- (void)postNotificationName:(NSString *)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo
{
    [[NSNotificationCenter defaultCenter] postNotificationName:aName object:anObject userInfo:aUserInfo];
}

+ (void)postNotificationName:(NSString *)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo
{
    [[NSNotificationCenter defaultCenter] postNotificationName:aName object:anObject userInfo:aUserInfo];
}

- (void)removeObserver:(id)observer
{
    [[NSNotificationCenter defaultCenter] removeObserver:observer];
}

+ (void)removeObserver:(id)observer
{
    [[NSNotificationCenter defaultCenter] removeObserver:observer];
}

- (void)removeObserver:(id)observer name:(NSString *)aName
{
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:aName object:nil];
}

+ (void)removeObserver:(id)observer name:(NSString *)aName
{
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:aName object:nil];
}

- (void)removeObserver:(id)observer name:(NSString *)aName object:(id)anObject
{
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:aName object:anObject];
}

+ (void)removeObserver:(id)observer name:(NSString *)aName object:(id)anObject
{
    [[NSNotificationCenter defaultCenter] removeObserver:observer name:aName object:anObject];
}

@end
