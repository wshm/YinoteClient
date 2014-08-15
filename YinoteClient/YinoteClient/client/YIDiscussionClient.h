//
//  YIDiscussionClient.h
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIBaseClient.h"
#import "YIReqDiscussionUpdate.h"

@interface YIDiscussionClient : YIBaseClient

/**
 *  更新评论
 *
 *  @param discussionId 评论id
 *  @param access_token 认证标示
 *  @param updateModel  更新评论模型YIReqDiscussionUpdate
 *  @param block        请求返回块
 */
+ (void)updateDiscussionWithId:(NSString*)discussionId
                   accessToken:(NSString*)access_token
                    updateModel:(YIReqDiscussionUpdate*)updateModel
                      rspBlock:(YiRspBlock)block;
/**
 *  永久删除评论
 *
 *  @param discussionId 评论id
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)deleteDiscussionWithId:(NSString*)discussionId
                   accessToken:(NSString*)access_token
                      rspBlock:(YiRspBlock)block;
@end
