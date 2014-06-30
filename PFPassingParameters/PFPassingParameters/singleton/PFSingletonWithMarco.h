//
//  PFSingletonWithMarco.h
//  PF_Passing_Parameters
//
//  Created by PFei_He on 14-6-27.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark -

#if __has_feature(objc_instancetype)

#undef	SET_SINGLETON
#define SET_SINGLETON( ... ) \
- (instancetype)sharedInstance; \
+ (instancetype)sharedInstance;

#undef	GET_SINGLETON
#define GET_SINGLETON \
- (instancetype)sharedInstance \
{ \
return [[self class] sharedInstance]; \
} \
+ (instancetype)sharedInstance \
{ \
static dispatch_once_t once; \
static id __singleton__; \
dispatch_once( &once, ^{ __singleton__ = [[self alloc] init]; } ); \
return __singleton__; \
}

#undef	GET_SINGLETON
#define GET_SINGLETON( ... ) \
- (instancetype)sharedInstance \
{ \
return [[self class] sharedInstance]; \
} \
+ (instancetype)sharedInstance \
{ \
static dispatch_once_t once; \
static id __singleton__; \
dispatch_once( &once, ^{ __singleton__ = [[self alloc] init]; } ); \
return __singleton__; \
}

#else

#undef	SET_SINGLETON
#define SET_SINGLETON( __class ) \
- (__class *)sharedInstance; \
+ (__class *)sharedInstance;

#undef	GET_SINGLETON
#define GET_SINGLETON( __class ) \
- (__class *)sharedInstance \
{ \
return [__class sharedInstance]; \
} \
+ (__class *)sharedInstance \
{ \
static dispatch_once_t once; \
static __class * __singleton__; \
dispatch_once( &once, ^{ __singleton__ = [[[self class] alloc] init]; } ); \
return __singleton__; \
}

#endif

#undef	GET_SINGLETON_AUTOLOAD
#define GET_SINGLETON_AUTOLOAD( __class ) \
GET_SINGLETON( __class ) \
+ (void)load \
{ \
[self sharedInstance]; \
}

#pragma mark -

@interface PFSingletonWithMarco : NSObject

SET_SINGLETON(PFSINGLETON);

@property (nonatomic, copy)     NSString            *str;
@property (nonatomic, strong)   NSMutableString     *mutableStr;

@property (nonatomic, strong)   NSArray             *arr;
@property (nonatomic, strong)   NSMutableArray      *mutableArr;

@property (nonatomic, strong)   NSDictionary        *dic;
@property (nonatomic, strong)   NSMutableDictionary *mutableDic;

@property (nonatomic, strong)   NSDate              *data;
@property (nonatomic, strong)   NSMutableData       *mutableData;

@end
