//
//  PFSetDelegate.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetDelegate.h"

@implementation PFSetDelegate

//拿回协议
- (void)callback
{
    //将水交出
    if ([self.delegate respondsToSelector:@selector(put:)]) {
        [self.delegate put:@"water"];
    }
}

@end
