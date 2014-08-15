//
//  YISearchClient.h
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIBaseClient.h"

@interface YISearchClient : YIBaseClient

/**
 *  搜索
 *
 *  @param words           搜索词
 *  @param knowledge_group 群组id
 *  @param access_token    认证标识
 *  @param block           请求返回块
 */
+ (void)searchDataWithWords:(NSString*)words
             knowledgeGroupId:(NSString*)knowledge_group
                accessToken:(NSString*)access_token
                   rspBlock:(YiRspBlock)block;
@end
