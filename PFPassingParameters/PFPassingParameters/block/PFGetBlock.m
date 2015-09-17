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

//饮水
- (void)drink
{
    //找到管理员
    PFSetBlock *manager = [[PFSetBlock alloc] init];
    
    //交出自己的杯子给管理员，并让他装水，装好后拿回来
    [manager put:^(NSString *water) {
        NSLog(@"%@", water);
    }];
}

@end
