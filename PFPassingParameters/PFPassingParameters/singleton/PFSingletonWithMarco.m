//
//  PFSingletonWithMarco.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSingletonWithMarco.h"

@implementation PFSingletonWithMarco

GET_SINGLETON(PFSINGLETON)

@synthesize str         = _str;
@synthesize mutableStr  = _mutableStr;

@synthesize arr         = _arr;
@synthesize mutableArr  = _mutableArr;

@synthesize dic         = _dic;
@synthesize mutableDic  = _mutableDic;

@synthesize data        = _data;
@synthesize mutableData = _mutableData;

@end
