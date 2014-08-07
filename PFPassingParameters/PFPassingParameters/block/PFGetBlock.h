//
//  PFGetBlock.h
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void(^PFBlockWithString)(NSString *string);
typedef void(^PFBlockWithArray)(NSArray *array);
typedef void(^PFBlockWithDictionary)(NSDictionary *dictionary);
typedef void(^PFBlock)(NSString *string, NSArray *array, NSDictionary *dictionary);

@interface PFGetBlock : NSObject

@property (nonatomic, copy) PFBlockWithString     stringBlock;
@property (nonatomic, copy) PFBlockWithArray      arrayBlock;
@property (nonatomic, copy) PFBlockWithDictionary dictionaryBlock;
@property (nonatomic, copy) PFBlock               block;

/**
 *  @brief 获取块
 */
- (void)getBlock;

@end
