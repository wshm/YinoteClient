//
//  YIReqTodoCreate.h
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIMBase.h"

@interface YIReqTodoCreate : YIMBase

@property(nonatomic,retain)NSString *id_;
@property(nonatomic,retain)NSString *title;
@property(nonatomic,assign)long long startAt;

@end
