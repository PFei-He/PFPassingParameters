//
//  PFGetExternVariables.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetExternVariables.h"

//外部变量
extern const NSString     *string;

@implementation PFGetExternVariables

//获取外部变量
- (void)getExternVariables
{
    NSLog(@"%@", string);
}

@end
