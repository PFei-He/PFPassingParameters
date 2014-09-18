//
//  PFSetBlock.h
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFSetBlock : NSObject

/**
 *  @brief 执行块
 */
- (void)setBlock;

/**
 *  @brief 块方法（string）
 */
- (void)setBlockWithString:(void(^)(NSString *string))block;

/**
 *  @brief 块方法（array）
 */
- (void)setBlockWithArray:(void(^)(NSArray *array))block;

/**
 *  @brief 块方法（dictionary）
 */
- (void)setBlockWithDictionary:(void(^)(NSDictionary *dictionary))block;

/**
 *  @brief 块方法（string, array, dictionary）
 */
- (void)setBlock:(void(^)(NSString *string, NSArray *array, NSDictionary *dictionary))block;

@end
