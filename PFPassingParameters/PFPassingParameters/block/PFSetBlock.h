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
 *  @brief 装水
 *  @param
 *  @detail
 *  @return
 */
- (void)put:(void(^)(NSString *water))cup;

@end
