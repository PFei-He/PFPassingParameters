//
//  PFSetProperty.h
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFSetProperty : NSObject

///茶水间的杯子
@property (nonatomic, copy) NSString *cup;

/**
 *  @brief 装水
 *  @param
 *  @detail
 *  @return
 */
- (void)put;

@end
