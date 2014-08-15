//
//  YISyncClient.h
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIBaseClient.h"
#import "YIMSyncState.h"

@interface YISyncClient : YIBaseClient

/**
 *  获取同步状态
 *
 *  @param access_token 认证标示
 *  @param block        请求返回块
 */
+ (void)getSyncStateWithToken:(NSString*)access_token
                     rspBlock:(YiRspBlock)block;

/**
 *  获取同步数据块
 *
 *  @param afterUsn    获取从该更新序列号(USN)以后的同步块
 *  @param maxEntries  返回的分页中所包含的条目的最大数量
 *  @param accessToken 令牌, 通过URL或者Cookie提供
 */
+ (void)getSyncChunkWithAfterUsn:(NSInteger)afterUsn
                      maxEntries:(NSInteger)maxEntries
                     accessToken:(NSString*)accessToken
                        rspBlock:(YiRspBlock)block;
@end
