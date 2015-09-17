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

//获取代码块
- (void)getBlock
{
    //把自己的杯子交给管理员，装满之后拿回来
    PFSetBlock *block = [[PFSetBlock alloc] init];
    [block setBlock:^(NSString *string) {
        //饮水
        NSLog(@"%@", string);
    }];
}

@end
