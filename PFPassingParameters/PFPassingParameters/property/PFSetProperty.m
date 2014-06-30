//
//  PFSetProperty.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetProperty.h"

@implementation PFSetProperty

@synthesize string      = _string;
@synthesize array       = _array;
@synthesize dictionary  = _dictionary;

//设置属性
- (void)setProperty
{
    self.string     = @"string";
    self.array      = @[@"array"];
    self.dictionary = @{@"key": @"object"};
}

@end
