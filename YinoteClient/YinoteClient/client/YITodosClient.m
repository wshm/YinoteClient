//
//  YITodosClient.m
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YITodosClient.h"

@implementation YITodosClient

//获取待办事项列表
+ (void)getTodosWithToken:(NSString*)access_token
                          rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/todos.json?access_token=%@",access_token];
    [[self class] get:urlstr parameters:nil rspBlock:block];
}

//新增待办事项
+ (void)createTodoWithModel:(YIReqTodoCreate*)paramModel
                accessToken:(NSString*)access_token
                   rspBlock:(YiRspBlock)block {
    [self createTodoWithMap:[paramModel genReqModel] accessToken:access_token rspBlock:block];
}
+ (void)createTodoWithMap:(NSDictionary*)paramMap
               accessToken:(NSString*)access_token
                  rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/todos.json?access_token=%@",access_token];
    [[self class] post:urlstr parameters:paramMap rspBlock:block];
}

//修改待办事项
+ (void)updateTodoWithId:(NSString*)todoId
              paramModel:(YIReqTodoUpdate*)paramModel
             accessToken:(NSString*)access_token
                rspBlock:(YiRspBlock)block {
    [self updateTodoWithId:todoId paramMap:[paramModel genReqModel] accessToken:access_token rspBlock:block];
}
+ (void)updateTodoWithId:(NSString*)todoId
              paramMap:(NSDictionary*)paramMap
             accessToken:(NSString*)access_token
                rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/todos.json/%@?access_token=%@",todoId,access_token];
    [[self class] put:urlstr parameters:paramMap rspBlock:block];
}

@end
