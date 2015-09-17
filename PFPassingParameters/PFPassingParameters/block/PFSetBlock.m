//
//  PFSetBlock.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetBlock.h"
#import "PFGetBlock.h"

@implementation PFSetBlock

//块方法（string）
- (void)blockMethod:(void(^)(NSString *string))block
{
    //回调块
    if (block) block(@"string");
}

@end
