//
//  YIApiTool.h
//  YinoteClient
//
//  Created by wshm on 14-8-7.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class YIApiError;
@class YIMUserInfo;
@class YIMSyncState;
@class YIMSyncChunk;
@class YIMVersioned;
@class YIMNoteMetadata;

@interface YIApiTool : NSObject
+ (YIApiError*)getApiErrorWithStatusCode:(NSInteger)code;
+ (YIApiError *)getApiErrorWithRsp:(id)response;
/**
 *  通用版本解析
 *
 *  @param responseObject 版本响应
 *
 *  @return id及usn
 */
+ (YIMVersioned*)getVersioned:(id)responseObject;
/**
 *  解析用户信息返回数据
 *
 *  @param responseObject 请求返回
 *
 *  @return 用户信息对象
 */
+ (YIMUserInfo*)getUserInfo:(id)responseObject;
/**
 *  同步状态响应解析
 *
 *  @param responseObject 响应
 *
 *  @return 同步状态
 */
+ (YIMSyncState*)getSyncState:(id)responseObject;
/**
 *  同步块响应解析
 *
 *  @param responseObject 响应
 *
 *  @return 同步块
 */
+ (YIMSyncChunk*)getSyncChunk:(id)responseObject;
/**
 *  笔记查询响应解析
 *
 *  @param responseObject 响应
 *
 *  @return 笔记数组
 */
+ (NSMutableArray*)getNoteQuery:(id)responseObject;
/**
 *  单条笔记响应解析
 *
 *  @param responseObject 响应
 *
 *  @return 笔记模型
 */
+ (YIMNoteMetadata*)getNoteMetadata:(id)responseObject;
/**
 *  获取评论的统计数响应解析
 *
 *  @param responseObject 响应
 *
 *  @return 评论数
 */
+ (NSNumber *)getDiscussionCount:(id)responseObject;
/**
 *  笔记评论查询响应解析
 *
 *  @param responseObject 响应
 *
 *  @return 评论数组
 */
+ (NSMutableArray*)getDiscussionQuery:(id)responseObject;
@end
