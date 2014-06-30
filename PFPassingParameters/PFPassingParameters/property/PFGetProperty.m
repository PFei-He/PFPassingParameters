//
//  PFGetProperty.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetProperty.h"
#import "PFSetProperty.h"

@implementation PFGetProperty

//获取属性
- (void)getProperty
{
    PFSetProperty *set = [[PFSetProperty alloc] init];
    [set setProperty];
    NSLog(@"==========property==========:%@", set.string);
    NSLog(@"==========property==========:%@", set.array);
    NSLog(@"==========property==========:%@", set.dictionary);
}

@end
