//
//  YITagsClient.m
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YITagsClient.h"
#import "YIApiTool.h"
#import "YIMVersioned.h"
#import "YIApiError.h"

@implementation YITagsClient
//查询标签
+ (void)queryTagWithModel:(YIReqTagQuery*)queryModel
              accessToken:(NSString*)access_token
                 rspBlock:(YiRspBlock)block {
    id queryParam = nil;
    if (queryModel) {
        queryParam = [queryModel genReqModel];
    }
    [self queryTagWithParam:queryParam accessToken:access_token rspBlock:block];
}
+ (void)queryTagWithParam:(NSDictionary*)queryParam
              accessToken:(NSString*)access_token
                 rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/tags.json?access_token=%@",access_token];
    [[self class] get:urlstr parameters:queryParam rspBlock:block];
}

//创建标签
+ (void)createTagWithModel:(YIReqTagCreate*)createModel
               accessToken:(NSString*)access_token
                  rspBlock:(YiRspBlock)block {
    if (createModel == nil) {
        YIApiError *apiError = [[YIApiError alloc] initWithParameters:9901 andMessage:NSLocalizedString(@"创建标签模型为空", nil)];
        if (block) {
            block(nil,nil,apiError);
        }
    }
    [self createTagWithMap:[createModel genReqModel] accessToken:access_token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        if (datas) {
            YIMVersioned *versioned = [YIApiTool getVersioned:datas];
            if (versioned) {
                if (block) {
                    block(versioned,error,apiError);
                }
            } else {
                if (block) {
                    block(datas,error,apiError);
                }
            }
        } else {
            if (block) {
                block(datas,error,apiError);
            }
        }
    }];
}
+ (void)createTagWithMap:(NSDictionary*)paramMap
               accessToken:(NSString*)access_token
                  rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/tags.json?access_token=%@",access_token];
    [[self class] post:urlstr parameters:paramMap rspBlock:block];
}

//更新笔记本
+ (void)updateNotebookWithModel:(YIReqTagUpdate*)paramModel
                          tagId:(NSString*)tagId
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block {
    if (paramModel == nil) {
        YIApiError *apiError = [[YIApiError alloc] initWithParameters:9902 andMessage:NSLocalizedString(@"更新标签模型为空", nil)];
        if (block) {
            block(nil,nil,apiError);
        }
    }
    [self updatetagWithMap:[paramModel genReqModel] tagId:tagId accessToken:access_token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        if (datas) {
            YIMVersioned *versioned = [YIApiTool getVersioned:datas];
            if (versioned) {
                if (block) {
                    block(versioned,error,apiError);
                }
            } else {
                if (block) {
                    block(datas,error,apiError);
                }
            }
        } else {
            if (block) {
                block(datas,error,apiError);
            }
        }
    }];
}
+ (void)updatetagWithMap:(NSDictionary*)paramMap
                        tagId:(NSString*)tagId
                   accessToken:(NSString*)access_token
                      rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/tags.json/%@?access_token=%@",tagId,access_token];
    [[self class] put:urlstr parameters:paramMap rspBlock:block];
}

@end
