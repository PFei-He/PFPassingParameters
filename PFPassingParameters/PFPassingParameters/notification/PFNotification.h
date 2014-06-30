//
//  PFNotification.h
//  PF_Passing_Parameters
//
//  Created by 飛Fei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFNotification : NSNotification

@end

@interface NSNotification (PFCategory)

/**
 *  @brief
 *  @param
 */
//- (void)addObserver:(id)observer name:(NSString *)aName;

/**
 *  @brief
 *  @param
 */
//+ (void)addObserver:(id)observer name:(NSString *)aName;

/**
 *  @brief
 *  @param
 *  @param
 */
- (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName;

/**
 *  @brief
 *  @param
 *  @param
 */
+ (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName;

/**
 *  @brief
 *  @param
 *  @param
 *  @param
 */
- (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)anObject;

/**
 *  @brief
 *  @param
 *  @param
 *  @param
 */
+ (void)addObserver:(id)observer selector:(SEL)aSelector name:(NSString *)aName object:(id)anObject;

/**
 *  @brief
 */
- (void)postNotification:(NSNotification *)notification;

/**
 *  @brief
 */
+ (void)postNotification:(NSNotification *)notification;

/**
 *  @brief
 *  @param
 */
- (void)postNotificationName:(NSString *)aName object:(id)anObject;

/**
 *  @brief
 *  @param
 */
+ (void)postNotificationName:(NSString *)aName object:(id)anObject;

/**
 *  @brief
 *  @param
 *  @param
 */
- (void)postNotificationName:(NSString *)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo;

/**
 *  @brief
 *  @param
 *  @param
 */
+ (void)postNotificationName:(NSString *)aName object:(id)anObject userInfo:(NSDictionary *)aUserInfo;

/**
 *  @brief
 */
- (void)removeObserver:(id)observer;

/**
 *  @brief
 */
+ (void)removeObserver:(id)observer;

/**
 *  @brief
 *  @param
 */
- (void)removeObserver:(id)observer name:(NSString *)aName;

/**
 *  @brief
 *  @param
 */
+ (void)removeObserver:(id)observer name:(NSString *)aName;

/**
 *  @brief
 *  @param
 *  @param
 */
- (void)removeObserver:(id)observer name:(NSString *)aName object:(id)anObject;

/**
 *  @brief
 *  @param
 *  @param
 */
+ (void)removeObserver:(id)observer name:(NSString *)aName object:(id)anObject;

@end
