//
//  PFNotificationWithMarco.h
//  PF_Passing_Parameters
//
//  Created by 飛Fei_He on 14-6-28.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

#pragma mark -

#undef	SET_NOTIFICATION
#define SET_NOTIFICATION( __name ) \
SET_STATIC_PROPERTY( __name )

#undef	GET_NOTIFICATION
#define GET_NOTIFICATION( __name ) \
GET_STATIC_PROPERTY3( __name, @"notify", [self description] )

#undef	HANDLE_NOTIFICATION_NAME
#define HANDLE_NOTIFICATION_NAME( __notification ) \
- (void)handleNotification:(NSNotification *)__notification

#undef	HANDLE_NOTIFICATION_FILTER
#define HANDLE_NOTIFICATION_FILTER( __filter, __notification ) \
- (void)handleNotification_##__filter:(NSNotification *)__notification

#undef	HANDLE_NOTIFICATION_CLASS
#define HANDLE_NOTIFICATION_CLASS( __class, __name, __notification ) \
- (void)handleNotification_##__class##_##__name:(NSNotification *)__notification

#pragma mark -

@interface PFNotificationWithMarco : NSNotification

@end
