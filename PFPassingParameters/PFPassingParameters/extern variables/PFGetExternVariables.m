//
//  PFGetExternVariables.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetExternVariables.h"

///拿到公用的杯子
extern const NSString *cup;

@implementation PFGetExternVariables

//饮水
- (void)drink
{
    NSLog(@"%@", cup);
}

@end
