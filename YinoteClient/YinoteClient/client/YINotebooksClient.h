//
//  YINotebooksClient.h
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIBaseClient.h"
#import "YIReqNotebookQuery.h"
#import "YIReqNotebookCreate.h"
#import "YIReqNotebookUpdate.h"
#import "YIReqNotebookDelete.h"

@interface YINotebooksClient : YIBaseClient

/**
 *  搜索笔记本
 *
 *  @param queryModel   查询数据模型YIReqNotebookQuery
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)queryNotebookWithModel:(YIReqNotebookQuery*)queryModel
                   accessToken:(NSString*)access_token
                      rspBlock:(YiRspBlock)block;

/**
 *  创建笔记本
 *
 *  @param createModel  创建数据模型YIReqNotebookCreate
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)createNotebookWithModel:(YIReqNotebookCreate*)createModel
                   accessToken:(NSString*)access_token
                      rspBlock:(YiRspBlock)block;

/**
 *  更新笔记本
 *
 *  @param updateModel  更新数据模型YIReqNotebookUpdate
 *  @param notebookId   笔记本id
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)updateNotebookWithModel:(YIReqNotebookUpdate*)updateModel
                     notebookId:(NSString*)notebookId
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block;

/**
 *  删除笔记本
 *
 *  @param deleteModel  更新数据模型YIReqNotebookUpdate
 *  @param notebookId   笔记本id
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)deleteNotebookWithModel:(YIReqNotebookDelete*)deleteModel
                     notebookId:(NSString*)notebookId
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block;
@end
