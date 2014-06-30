//
//  PFRootViewController.m
//  PFPassingParameters
//
//  Created by PFei_He on 14-6-30.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFRootViewController.h"

#import "PFSetBlock.h"

#import "PFGetDelegate.h"

#import "PFSetExternVariables.h"
#import "PFGetExternVariables.h"

#import "PFSetNotification.h"
#import "PFGetNotification.h"

#import "PFSetNSUserDefaults.h"
#import "PFGetNSUserDefaults.h"

#import "PFGetProperty.h"

#import "PFSetSingleton.h"
#import "PFGetSingleton.h"

@interface PFRootViewController ()

@end

@implementation PFRootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    PFSetBlock *setBlock = [[PFSetBlock alloc] init];
    [setBlock setBlock];


    PFGetDelegate *getDelegate = [[PFGetDelegate alloc] init];
    [getDelegate getDelegate];


    PFSetExternVariables *setExternVariables = [[PFSetExternVariables alloc] init];
    [setExternVariables setExternVariables];
    PFGetExternVariables *getExternVariables = [[PFGetExternVariables alloc] init];
    [getExternVariables getExternVariables];


    PFGetNotification *getNotification = [[PFGetNotification alloc] init];
    [getNotification getNotification];
    PFSetNotification *setNotification = [[PFSetNotification alloc] init];
    [setNotification setNotification];


    PFSetNSUserDefaults *setNSUserDefaults = [[PFSetNSUserDefaults alloc] init];
    [setNSUserDefaults setNSUserDefaults];
    PFGetNSUserDefaults *getNSUserDefaults = [[PFGetNSUserDefaults alloc] init];
    [getNSUserDefaults getNSUserDefaults];


    PFGetProperty *getProperty = [[PFGetProperty alloc] init];
    [getProperty getProperty];


    PFSetSingleton *setSingleton = [[PFSetSingleton alloc] init];
    [setSingleton setSingleton];
    PFGetSingleton *getSingleton = [[PFGetSingleton alloc] init];
    [getSingleton getSingleton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
