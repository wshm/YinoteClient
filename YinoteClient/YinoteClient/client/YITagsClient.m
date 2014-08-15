//
//  YITagsClient.m
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YITagsClient.h"

@implementation YITagsClient
//查询标签
+ (void)queryTagWithModel:(YIReqTagQuery*)queryModel
              accessToken:(NSString*)access_token
                 rspBlock:(YiRspBlock)block {
    [self queryTagWithParam:[queryModel genReqModel] accessToken:access_token rspBlock:block];
}
+ (void)queryTagWithParam:(NSDictionary*)queryParam
              accessToken:(NSString*)access_token
                 rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/tags.json?access_token=%@",access_token];
    [[self class] get:urlstr parameters:queryParam rspBlock:block];
}

//创建标签
+ (void)createTagWithModel:(YIReqTagCreate*)createModel
               accessToken:(NSString*)access_token
                  rspBlock:(YiRspBlock)block {
    [self createTagWithMap:[createModel genReqModel] accessToken:access_token rspBlock:block];
}
+ (void)createTagWithMap:(NSDictionary*)paramMap
               accessToken:(NSString*)access_token
                  rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/tags.json?access_token=%@",access_token];
    [[self class] post:urlstr parameters:paramMap rspBlock:block];
}

//更新笔记本
+ (void)updateNotebookWithModel:(YIReqTagUpdate*)paramModel
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block {
    [self updateNotebookWithMap:[paramModel genReqModel] accessToken:access_token rspBlock:block];
}
+ (void)updateNotebookWithMap:(NSDictionary*)paramMap
                   accessToken:(NSString*)access_token
                      rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/tags.json?access_token=%@",access_token];
    [[self class] put:urlstr parameters:paramMap rspBlock:block];
}

@end
