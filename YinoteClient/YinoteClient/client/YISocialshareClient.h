//
//  YISocialshareClient.h
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIBaseClient.h"

@interface YISocialshareClient : YIBaseClient

/**
 *  管理笔记的社会化分享和获取URL
 *
 *  @param noteId       笔记id
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)getSocialShareWithNoteId:(NSString*)noteId
                     accessToken:(NSString*)access_token
                        rspBlock:(YiRspBlock)block;

/**
 *  发布笔记 撤销发布
 *
 *  @param noteId       笔记id
 *  @param make_public  true: 发布笔记; false: 撤销发布
 *  @param access_token 认证标识
 *  @param block        请求返回块
 */
+ (void)publicSocialShareWithNoteId:(NSString*)noteId
                         makePublic:(BOOL)make_public
                        accessToken:(NSString*)access_token
                           rspBlock:(YiRspBlock)block;
@end
