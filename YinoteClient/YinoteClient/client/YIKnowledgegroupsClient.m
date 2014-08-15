//
//  YIKnowledgegroupsClient.m
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIKnowledgegroupsClient.h"

@implementation YIKnowledgegroupsClient

//按照成员获取群组
+ (void)getKnowledgeGroupWithStatus:(YIKnowledgegroupStatus)status
                        accessToken:(NSString*)access_token
                        rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/knowledgegroups.json?access_token=%@",access_token];
    NSString *queryStatus = @"noraml";
    switch (status) {
        case YIKnowledgegroupStatusDelete:
        {
            queryStatus = @"deleted";
            break;
        }
        case YIKnowledgegroupStatusNormal:
        {
            queryStatus = @"normal";
            break;
        }
        default:
        {
            queryStatus = @"normal";
            break;
        }
    }
    NSDictionary *param = @{@"status":queryStatus};
    [[self class] get:urlstr parameters:param rspBlock:block];
}

//创建群组
+ (void)createKnowledgeGroupWithModel:(YIReqKnowledgeGroup*)group
                          accessToken:(NSString*)access_token
                             rspBlock:(YiRspBlock)block {
    [self createKnowledgeGroupWithModel:[group genReqModel] accessToken:access_token rspBlock:block];
}

+ (void)createKnowledgeGroupWithMap:(NSDictionary*)paramModel
                          accessToken:(NSString*)access_token
                             rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/knowledgegroups.json?access_token=%@",access_token];
    [[self class] post:urlstr parameters:paramModel rspBlock:block];
}

//按照id获取群组
+ (void)getKnowledgeGroupWithGroupId:(NSString*)groupId
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/knowledgegroups.json/%@?access_token=%@",groupId,access_token];
    [[self class] get:urlstr parameters:nil rspBlock:block];
}

//更新群组
+ (void)updateKnowledgeGroupWithGroupId:(NSString*)groupId
                             paramModel:(YIReqKnowledgeGroup*)paramModel
                            accessToken:(NSString*)access_token
                               rspBlock:(YiRspBlock)block {
    [self updateKnowledgeGroupWithGroupId:groupId paramMap:[paramModel genReqModel] accessToken:access_token rspBlock:block];
}

+ (void)updateKnowledgeGroupWithGroupId:(NSString*)groupId
                        paramMap:(NSDictionary*)paramMap
                       accessToken:(NSString*)access_token
                          rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/knowledgegroups.json/%@?access_token=%@",groupId,access_token];
    [[self class] post:urlstr parameters:paramMap rspBlock:block];
}

//删除群组
+ (void)deleteKnowledgetGroupWithGroupId:(NSString*)groupId
                        accessToken:(NSString*)access_token
                           rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/knowledgegroups.json/%@?access_token=%@",groupId,access_token];
    [[self class] delete:urlstr parameters:nil rspBlock:block];
}

//获取群组成员列表
+ (void)getKnowledgetMembersWithGroupId:(NSString*)groupId
                            accessToken:(NSString*)access_token
                               rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/knowledgegroups.json/%@/members?access_token=%@",groupId,access_token];
    [[self class] get:urlstr parameters:nil rspBlock:block];
}

//增加群组成员
+ (void)addKnowledgetMembersWithGroupId:(NSString*)groupId
                             paramModel:(YIReqKnowledgeGroupMember *)paramModel
                            accessToken:(NSString*)access_token
                               rspBlock:(YiRspBlock)block {
    [self addKnowledgetMembersWithGroupId:groupId paramMap:[paramModel genReqModel] accessToken:access_token rspBlock:block];
}

+ (void)addKnowledgetMembersWithGroupId:(NSString*)groupId
                             paramMap:(NSDictionary*)paramMap
                            accessToken:(NSString*)access_token
                               rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/knowledgegroups.json/%@/members?access_token=%@",groupId,access_token];
    [[self class] post:urlstr parameters:paramMap rspBlock:block];
}

//删除群组成员
+ (void)deleteKnowledgeMembersWithGroupId:(NSString*)groupId
                                 memberId:(NSString*)memberId
                              accessToken:(NSString*)access_token
                                 rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/knowledgegroups.json/%@/members/%@?access_token=%@",groupId,memberId,access_token];
    [[self class] delete:urlstr parameters:nil rspBlock:block];
}

//受邀账号列表
+ (void)getKnowledgeGroupInvitationsWithGroupId:(NSString*)groupId
                                    accessToken:(NSString*)access_token
                                       rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/knowledgegroups.json/%@/invitations?access_token=%@",groupId,access_token];
    [[self class] get:urlstr parameters:nil rspBlock:block];
}

//删除受邀账号
+ (void)deleteKnowledgeGroupInviteeWithGroupId:(NSString*)groupId
                                inviteeAccount:(NSString*)inviteeAccount
                                   accessToken:(NSString*)access_token
                                      rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/knowledgegroups.json/%@/invitations/%@?access_token=%@",groupId,inviteeAccount,access_token];
    [[self class] delete:urlstr parameters:nil rspBlock:block];
}
@end
