//
//  PFSetDelegate.h
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PFSetDelegate;

//协议
@protocol PFDelegate <NSObject>
@required

/**
 *  @brief 装水
 *  @param
 *  @detail
 *  @return
 */
- (void)put:(NSString *)water;

@end

@interface PFSetDelegate : NSObject

//协议的签订人
@property (nonatomic, weak) id<PFDelegate> delegate;

/**
 *  @brief 拿回协议
 *  @param
 *  @detail
 *  @return
 */
- (void)callback;

@end
