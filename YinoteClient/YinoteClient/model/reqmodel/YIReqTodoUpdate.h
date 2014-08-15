//
//  YIReqTodoUpdate.h
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMBase.h"

@interface YIReqTodoUpdate : YIMBase

@property (nonatomic,retain)NSString *id_;
@property (nonatomic,retain)NSString *title;
@property (nonatomic,assign)long long startAt;
@property (nonatomic,assign)long long completeAt;
@property (nonatomic,assign)int usn;

@end
