//
//  YISearchClient.m
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YISearchClient.h"

@implementation YISearchClient

//搜索
+ (void)searchDataWithWords:(NSString*)words
            knowledgeGroupId:(NSString*)knowledge_group
                accessToken:(NSString*)access_token
                   rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/search.json?access_token=%@",access_token];
    NSDictionary *param = @{@"words":words,@"knowledge_group":knowledge_group};
    [[self class] get:urlstr parameters:param rspBlock:block];

}

@end
