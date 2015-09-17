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
 *  @brief 获取代码块
 *  @param
 *  @detail 这个是口渴者拿回杯子并饮水的过程
 *  @return
 */
- (void)getBlock;

@end
