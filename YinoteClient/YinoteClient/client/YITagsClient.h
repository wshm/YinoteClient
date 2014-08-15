//
//  YITagsClient.h
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIBaseClient.h"
#import "YIReqTagQuery.h"
#import "YIReqTagCreate.h"
#import "YIReqTagUpdate.h"

@interface YITagsClient : YIBaseClient

/**
 *  查询标签
 *
 *  @param queryModel   标签查询条件模型YIReqTagQuery
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)queryTagWithModel:(YIReqTagQuery*)queryModel
              accessToken:(NSString*)access_token
                 rspBlock:(YiRspBlock)block;

/**
 *  创建标签
 *
 *  @param paramModel   标签创建模型YIReqTagCreate
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)createTagWithModel:(YIReqTagCreate*)createModel
               accessToken:(NSString*)access_token
                  rspBlock:(YiRspBlock)block;

/**
 *  更新笔记本
 *
 *  @param paramModel   标签更新模型YIReqTagUpdate
 *  @param tagId        标签 id
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)updateNotebookWithModel:(YIReqTagUpdate*)paramModel
                          tagId:(NSString*)tagId
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block;
@end
