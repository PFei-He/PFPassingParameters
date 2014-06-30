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

- (void)setBlockWithString:(void(^)(NSString *string))string
{
    NSString *str = @"string";
    
    if (string) {
        string(str);
    }
}

- (void)setBlockWithArray:(void (^)(NSArray *))array
{
    NSArray *arr = @[@"array"];
    
    if (array) {
        array(arr);
    }
}

- (void)setBlockWithDictionary:(void (^)(NSDictionary *))dictionary
{
    NSDictionary *dic = @{@"key": @"object"};
    
    if (dictionary) {
        dictionary(dic);
    }
}

- (void)setBlock:(void (^)(NSString *, NSArray *, NSDictionary *))block
{
    NSString *str = @"string";
    NSArray *arr = @[@"array"];
    NSDictionary *dic = @{@"key": @"object"};
    
    if (block) {
        block(str, arr, dic);
    }
}

@end
