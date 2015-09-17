//
//  PFSetNotification.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetNotification.h"

@implementation PFSetNotification

//装水
- (void)put
{
    //通过广播告诉大家杯子都已经装满水
    [[NSNotificationCenter defaultCenter] postNotificationName:@"cup" object:@"water"];
}

@end
