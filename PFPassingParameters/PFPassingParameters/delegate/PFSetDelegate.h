//
//  PFSetDelegate.h
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PFDelegate;

@interface PFSetDelegate : NSObject

@property (nonatomic, weak) id<PFDelegate> delegate;

/**
 *  @brief 回调代理
 */
- (void)callbackDelegate;

@end

@protocol PFDelegate <NSObject>

@required
//@optional

/**
 *  @brief 代理方法（string）
 */
- (void)setDelegateWithString:(NSString *)string;

/**
 *  @brief 代理方法（array）
 */
- (void)setDelegateWithArray:(NSArray *)array;

/**
 *  @brief 代理方法（dictionary）
 */
- (void)setDelegateWithDictionary:(NSDictionary *)dictionary;

/**
 *  @brief 代理方法（string, array, dictionary）
 */
- (void)setDelegateWithString:(NSString *)string array:(NSArray *)array dictionary:(NSDictionary *)dictionary;

@end
