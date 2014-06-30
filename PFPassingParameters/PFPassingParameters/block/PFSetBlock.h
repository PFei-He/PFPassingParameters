//
//  PFSetBlock.h
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFSetBlock : NSObject

- (void)setBlock;

- (void)setBlockWithString:(void(^)(NSString *string))string;

- (void)setBlockWithArray:(void(^)(NSArray *array))array;

- (void)setBlockWithDictionary:(void(^)(NSDictionary *dictionary))dictionary;

- (void)setBlock:(void(^)(NSString *string, NSArray *array, NSDictionary *dictionary))block;

@end
