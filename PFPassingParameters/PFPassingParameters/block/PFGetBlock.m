//
//  PFGetBlock.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetBlock.h"
#import "PFSetBlock.h"

@implementation PFGetBlock

//获取块
- (void)getBlock
{
    PFSetBlock *block = [[PFSetBlock alloc] init];
    [block blockMethod:^(NSString *string) {
        NSLog(@"%@", string);
    }];
}

@end
