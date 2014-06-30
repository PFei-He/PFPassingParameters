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

@synthesize stringBlock = _stringBlock;
@synthesize arrayBlock = _arrayBlock;
@synthesize dictionaryBlock = _dictionaryBlock;

//获取块
- (void)getBlock
{
    if (self.stringBlock) {
        self.stringBlock(@"string");
    }
    if (self.arrayBlock) {
        self.arrayBlock(@[@"array"]);
    }
    if (self.dictionaryBlock) {
        self.dictionaryBlock(@{@"key": @"object"});
    }
    if (self.block) {
        self.block(@"string", @[@"array"], @{@"key": @"object"});
    }
    
    PFSetBlock *block = [[PFSetBlock alloc] init];
    
    [block setBlockWithString:^(NSString *string) {
        NSLog(@"==========block==========:%@", string);
    }];
    
    [block setBlockWithArray:^(NSArray *array) {
        NSLog(@"==========block==========:%@", array);
    }];
    
    [block setBlockWithDictionary:^(NSDictionary *dictionary) {
        NSLog(@"==========block==========:%@", dictionary);
    }];
    
    [block setBlock:^(NSString *string, NSArray *array, NSDictionary *dictionary) {
        NSLog(@"==========block==========:%@\n%@\n%@", string, array, dictionary);
    }];
}

@end
