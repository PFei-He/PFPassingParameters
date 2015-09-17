//
//  PFSetDelegate.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetDelegate.h"

@implementation PFSetDelegate

@synthesize delegate = _delegate;

//回调代理
- (void)callbackDelegate
{
    //管理员交出自己的饮品
    if ([self.delegate respondsToSelector:@selector(setDelegate:)]) {
        [self.delegate setDelegate:@"string"];
    }
}

@end
