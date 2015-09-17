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
 *  @brief 设置代码块
 *  @param
 *  @detail 这个是茶水间管理员给杯子倒水的过程
 *  @return
 */
- (void)setBlock:(void(^)(NSString *string))block;

@end
