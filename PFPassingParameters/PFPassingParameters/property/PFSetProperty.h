//
//  PFSetProperty.h
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFSetProperty : NSObject

@property (nonatomic, copy)     NSString        *string;
@property (nonatomic, strong)   NSArray         *array;
@property (nonatomic, strong)   NSDictionary    *dictionary;

/**
 *  @brief 设置属性
 */
- (void)setProperty;

@end
