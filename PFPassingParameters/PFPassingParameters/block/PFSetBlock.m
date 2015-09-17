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

//装水
- (void)put:(void(^)(NSString *))cup
{
    //如果拿到杯子，就给杯子里装水
    if (cup) cup(@"water");
}

@end
