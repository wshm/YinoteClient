//
//  YIKnowledgegroupsClient.h
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIBaseClient.h"
#import "YIReqKnowledgeGroup.h"
#import "YIReqKnowledgeGroupMember.h"

typedef enum {
    YIKnowledgegroupStatusDelete = 0,
    YIKnowledgegroupStatusNormal = 1,
} YIKnowledgegroupStatus;

@interface YIKnowledgegroupsClient : YIBaseClient

/**
 *  按照成员获取群组
 *
 *  @param status       查询状态 YIKnowledgegroupStatus
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)getKnowledgeGroupWithStatus:(YIKnowledgegroupStatus)status
                        accessToken:(NSString*)access_token
                           rspBlock:(YiRspBlock)block;
/**
 *  创建群组
 *
 *  @param paramModel   请求参数模型YIReqKnowledgeGroup
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */

+ (void)createKnowledgeGroupWithModel:(YIReqKnowledgeGroup*)group
                          accessToken:(NSString*)access_token
                             rspBlock:(YiRspBlock)block;


/**
 *  按照id获取群组
 *
 *  @param groupId      群组id
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)getKnowledgeGroupWithGroupId:(NSString*)groupId
                         accessToken:(NSString*)access_token
                            rspBlock:(YiRspBlock)block;

//
/**
 *  更新群组
 *
 *  @param groupId      群组id
 *  @param paramModel   请求参数模型YIReqKnowledgeGroup
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)updateKnowledgeGroupWithGroupId:(NSString*)groupId
                             paramModel:(YIReqKnowledgeGroup*)paramModel
                            accessToken:(NSString*)access_token
                               rspBlock:(YiRspBlock)block;

/**
 *  删除群组
 *
 *  @param groupId      群组id
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)deleteKnowledgetGroupWithGroupId:(NSString*)groupId
                             accessToken:(NSString*)access_token
                                rspBlock:(YiRspBlock)block;


/**
 *  获取群组成员列表
 *
 *  @param groupId      群组id
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)getKnowledgetMembersWithGroupId:(NSString*)groupId
                            accessToken:(NSString*)access_token
                               rspBlock:(YiRspBlock)block;

/**
 *  增加群组成员
 *
 *  @param groupId      群组id
 *  @param paramModel   请求参数模型
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)addKnowledgetMembersWithGroupId:(NSString*)groupId
                             paramModel:(YIReqKnowledgeGroupMember*)paramModel
                            accessToken:(NSString*)access_token
                               rspBlock:(YiRspBlock)block;

/**
 *  删除群组成员
 *
 *  @param groupId      群组id
 *  @param memberId     成员id
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)deleteKnowledgeMembersWithGroupId:(NSString*)groupId
                                 memberId:(NSString*)memberId
                              accessToken:(NSString*)access_token
                                 rspBlock:(YiRspBlock)block;


/**
 *  受邀账号列表
 *
 *  @param groupId      群组id
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)getKnowledgeGroupInvitationsWithGroupId:(NSString*)groupId
                                    accessToken:(NSString*)access_token
                                       rspBlock:(YiRspBlock)block;

//删除受邀账号
/**
 *  删除受邀账号
 *
 *  @param groupId        群组id
 *  @param inviteeAccount 受邀账户
 *  @param access_token   认证标识
 *  @param block          请求返回块
 */
+ (void)deleteKnowledgeGroupInviteeWithGroupId:(NSString*)groupId
                                inviteeAccount:(NSString*)inviteeAccount
                                   accessToken:(NSString*)access_token
                                      rspBlock:(YiRspBlock)block;
@end
