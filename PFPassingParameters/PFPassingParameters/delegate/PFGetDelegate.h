//
//  PFGetDelegate.h
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PFSetDelegate.h"

@interface PFGetDelegate : NSObject <PFDelegate /*需要签注的租用协议*/>

/**
 *  @brief 饮水
 *  @param
 *  @detail
 *  @return
 */
- (void)drink;

@end
