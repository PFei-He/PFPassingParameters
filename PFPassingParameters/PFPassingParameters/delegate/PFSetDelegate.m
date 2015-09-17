//
//  PFSetDelegate.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetDelegate.h"

@implementation PFSetDelegate

//回调代理
- (void)callbackDelegate
{
    //监听代理方法是否被实现，若实现则执行该代理方法
    if ([self.delegate respondsToSelector:@selector(delegateMethod:)]) {
        [self.delegate delegateMethod:@"string"];
    }
}

@end
