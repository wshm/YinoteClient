//
//  YIResourcesClient.h
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIBaseClient.h"
#import "YIReqResourceCreate.h"
#import "YIReqResourceUpdate.h"
#import "YIReqResourceDelete.h"

@interface YIResourcesClient : YIBaseClient
/**
 *  检索资源
 *
 *  @param knowledgetGroupId 群组/知识库id
 *  @param noteId            笔记id
 *  @param access_token      认证标示
 *  @param block             请求返回块
 */
+ (void)getResourcesWithKnowledgetGroupId:(NSString*)knowledgetGroupId
                                   noteId:(NSString*)noteId
                              accessToken:(NSString*)access_token
                                 rspBlock:(YiRspBlock)block;

/**
 *  创建资源
 *
 *  @param paramModel   创建资源请求模型YIReqResourceCreate
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)createResourceWithModel:(YIReqResourceCreate*)paramModel
               accessToken:(NSString*)access_token
                  rspBlock:(YiRspBlock)block;

/**
 *  查询单个资源
 *
 *  @param resourceId   资源id
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)getResourcesWithResourceId:(NSString*)resourceId
                       accessToken:(NSString*)access_token
                          rspBlock:(YiRspBlock)block;

/**
 *  更新资源
 *
 *  @param paramModel   更新资源请求模型YIReqResourceUpdate
 *  @param resourceId   资源id
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)updateResourceWithModel:(YIReqResourceUpdate*)paramModel
                     resourceId:(NSString*)resourceId
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block;
/**
 *  永久删除资源
 *
 *  @param paramModel   永久删除资源请求模型YIReqResourceDelete
 *  @param resourceId   资源id
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)deleteResourceWithModel:(YIReqResourceDelete*)paramModel
                     resourceId:(NSString*)resourceId
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block;
@end
