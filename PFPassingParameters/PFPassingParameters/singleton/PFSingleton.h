//
//  PFSingleton.h
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFSingleton : NSObject
{
@public NSString        *string;
@public NSArray         *array;
@public NSDictionary    *dictionary;
}

@property (nonatomic, copy)     NSString        *string;
@property (nonatomic, strong)   NSArray         *array;
@property (nonatomic, strong)   NSDictionary    *dictionary;

/**
 *  @brief 单例
 */
+ (PFSingleton *)sharedInstance;

@end
