//
//  YINoteClient.h
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIBaseClient.h"
#import "YIReqNoteQuery.h"
#import "YIReqNoteCreate.h"
#import "YIReqNoteUpdate.h"
#import "YIReqNoteDelete.h"
#import "YIReqDiscussionCreate.h"

@interface YINotesClient : YIBaseClient
/**
 *  搜索笔记
 *
 *  @param queryModel   查询笔记模型YIReqNoteQuery
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)queryNoteWithModel:(YIReqNoteQuery*)queryModel
               accessToken:(NSString*)access_token
                  rspBlock:(YiRspBlock)block;
/**
 *  创建笔记
 *
 *  @param queryModel   创建笔记模型YIReqNoteCreate
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)createNoteWithModel:(YIReqNoteCreate*)createModel
                accessToken:(NSString*)access_token
                   rspBlock:(YiRspBlock)block;
/**
 *  更新笔记
 *
 *  @param updateModel  更新笔记模型YIReqNoteUpdate
 *  @param noteId       笔记id
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)updateNoteWithModel:(YIReqNoteUpdate*)updateModel
                     noteId:(NSString*)noteId
                accessToken:(NSString*)access_token
                   rspBlock:(YiRspBlock)block;

/**
 *  删除笔记
 *
 *  @param deleteModel  删除笔记模型
 *  @param access_token 认证标识
 *  @param noteId       笔记id
 *  @param block        请求返回块
 */
+ (void)deleteNoteContentWithModel:(YIReqNoteDelete*)deleteModel
                         noteId:(NSString*)noteId
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block;
/**
 *  获得笔记正文content
 *
 *  @param noteId       笔记id
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)getNoteContentWithNoteId:(NSString*)noteId
                           Token:(NSString*)access_token
                        rspBlock:(YiRspBlock)block;

/**
 *  获取最近5条笔记
 *
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)getLatest5notesWithToken:(NSString*)access_token
                        rspBlock:(YiRspBlock)block;


/**
 *  获取笔记评论
 *
 *  @param noteId       笔记id
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)getNoteDiscussionWithNoteId:(NSString*)noteId
                        accessToken:(NSString*)access_token
                           rspBlock:(YiRspBlock)block;
/**
 *  增加笔记评论
 *
 *  @param createModel  创建评论模型YIReqDiscussionCreate
 *  @param noteId       笔记id
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)addNoteDiscussionWithModel:(YIReqDiscussionCreate*)createModel
                            noteId:(NSString*)noteId
                       accessToken:(NSString*)access_token
                          rspBlock:(YiRspBlock)block;

/**
 *  获取评论的统计数
 *
 *  @param noteId       笔记id
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)getNoteDiscussionCountWithNoteId:(NSString*)noteId
                             accessToken:(NSString*)access_token
                                rspBlock:(YiRspBlock)block;
@end
