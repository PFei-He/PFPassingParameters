//
//  PFSetDelegate.h
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

//租借协议
@protocol PFDelegate;

@interface PFSetDelegate : NSObject

//签订人
@property (nonatomic, weak) id<PFDelegate> delegate;

/**
 *  @brief 回调代理
 *  @param
 *  @detail 这个可看作是管理员拿回已经签订的协议
 *  @return
 */
- (void)callbackDelegate;

@end

@protocol PFDelegate <NSObject>

/**
 *  @brief 代理方法
 *  @param
 *  @detail 这个是口渴者拿回饮品的过程
 *  @return
 */
- (void)setDelegate:(NSString *)string;

@end
