//
//  YIAppDelegate.h
//  YinoteClientDemo
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YINotesClient.h"
@interface YIAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) YINotesClient *notesClient;
@end
