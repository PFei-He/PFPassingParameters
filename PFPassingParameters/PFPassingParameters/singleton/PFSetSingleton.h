//
//  PFSetSingleton.h
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFSetSingleton : NSObject

///
@property (nonatomic, copy) NSString *string;

/**
 *  @brief
 *  @param
 *  @detail
 *  @return
 */
- (void)setSingleton;

/**
 *  @brief
 *  @param
 *  @detail
 *  @return
 */
+ (PFSetSingleton *)sharedInstance;

@end
