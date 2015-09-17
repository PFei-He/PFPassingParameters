//
//  PFGetBlock.h
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^PFBlock)();

@interface PFGetBlock : NSObject

@property (nonatomic, copy) PFBlock block;

/**
 *  @brief 获取块
 */
- (void)getBlock;

@end
