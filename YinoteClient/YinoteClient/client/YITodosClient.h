//
//  YITodosClient.h
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIBaseClient.h"
#import "YIReqTodoCreate.h"
#import "YIReqTodoUpdate.h"

@interface YITodosClient : YIBaseClient

/**
 *  获取待办事项列表
 *
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)getTodosWithToken:(NSString*)access_token
                 rspBlock:(YiRspBlock)block;

/**
 *  新增待办事项
 *
 *  @param paramModel   请求参数模型YIReqTodoCreate
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)createTodoWithModel:(YIReqTodoCreate*)paramModel
                accessToken:(NSString*)access_token
                   rspBlock:(YiRspBlock)block;
/**
 *  修改待办事项
 *
 *  @param todoId       待办事项id
 *  @param paramModel   请求参数模型YIReqTodoUpdate
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)updateTodoWithId:(NSString*)todoId
              paramModel:(YIReqTodoUpdate*)paramModel
             accessToken:(NSString*)access_token
                rspBlock:(YiRspBlock)block;
@end
