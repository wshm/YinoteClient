//
//  YIMTodo.h
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIMBase.h"
@interface YIMTodo : YIMBase

@property(nonatomic,strong) NSString *id_;
@property(nonatomic,strong) NSString *title;
@property(nonatomic,assign) int usn;
@property(nonatomic,assign) int64_t startAt;
@property(nonatomic,assign) int64_t completeAt;

@end
