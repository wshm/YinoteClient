//
//  YIReqTodoCreate.m
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqTodoCreate.h"

@implementation YIReqTodoCreate

- (id)genReqModel {
    NSAssert(self.title != nil, @"YIReqTodoCreate:genReqModel: Argument must be non-nil");
    NSDictionary *param = @{@"id":self.id_,@"title":self.title,@"startAt":@(self.startAt)};
    return param;
}
@end
