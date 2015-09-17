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

/**
 *  @brief 代理方法（string）
 */
- (void)delegateMethod:(NSString *)string;

@end
