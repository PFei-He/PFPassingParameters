//
//  PFUserDefaults.h
//  PFPassingParameters
//
//  Created by PFei_He on 14-7-3.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFUserDefaults : NSObject

- (id)objectForKey:(NSString *)defaultName;
+ (id)objectForKey:(NSString *)defaultName;

- (void)setObject:(id)value forKey:(NSString *)defaultName;
+ (void)setObject:(id)value forKey:(NSString *)defaultName;

- (void)removeObjectForKey:(NSString *)defaultName;
+ (void)removeObjectForKey:(NSString *)defaultName;

- (void)resetStandardUserDefaults;
+ (void)resetStandardUserDefaults;

@end
