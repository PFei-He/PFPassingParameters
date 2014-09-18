//
//  PFSetBlock.m
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetBlock.h"
#import "PFGetBlock.h"

@implementation PFSetBlock

//执行块
- (void)setBlock
{
    PFGetBlock *get = [[PFGetBlock alloc] init];
    get.stringBlock = ^(NSString *string) {
        NSLog(@"==========block==========:%@", string);
    };
    get.arrayBlock = ^(NSArray *array) {
        NSLog(@"==========block==========:%@", array);
    };
    get.dictionaryBlock = ^(NSDictionary *dictionary) {
        NSLog(@"==========block==========:%@", dictionary);
    };
    get.block = ^(NSString *string, NSArray *array, NSDictionary *dictionary) {
        NSLog(@"==========block==========:%@\n%@\n%@", string, array, dictionary);
    };
    [get getBlock];
}

//块方法（string）
- (void)setBlockWithString:(void(^)(NSString *string))block
{
    NSString *str = @"string";

    //回调块
    if (block) block(str);
}

//块方法（array）
- (void)setBlockWithArray:(void (^)(NSArray *))block
{
    NSArray *arr = @[@"array"];

    //回调块
    if (block) block(arr);
}

//块方法（dictionary）
- (void)setBlockWithDictionary:(void (^)(NSDictionary *))block
{
    NSDictionary *dic = @{@"key": @"object"};

    //回调块
    if (block) block(dic);
}

//块方法（string, array, dictionary）
- (void)setBlock:(void (^)(NSString *, NSArray *, NSDictionary *))block
{
    NSString *str = @"string";
    NSArray *arr = @[@"array"];
    NSDictionary *dic = @{@"key": @"object"};

    //回调块
    if (block) block(str, arr, dic);
}

@end
