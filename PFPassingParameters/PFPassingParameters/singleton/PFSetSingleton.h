//
//  PFSetSingleton.h
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFSetSingleton : NSObject

///茶水间的杯子（只有唯一一个）
@property (nonatomic, copy) NSString *string;

/**
 *  @brief 装水
 *  @param
 *  @detail
 *  @return
 */
- (void)put;

/**
 *  @brief 拿出杯子
 *  @param
 *  @detail
 *  @return
 */
+ (PFSetSingleton *)sharedInstance;

@end
