//
//  YIResourcesClient.m
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIResourcesClient.h"

@implementation YIResourcesClient

//检索资源
+ (void)getResourcesWithKnowledgetGroupId:(NSString*)knowledgetGroupId
                                   noteId:(NSString*)noteId
                              accessToken:(NSString*)access_token
                                 rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/resources?access_token=%@",access_token];
    NSDictionary *param = @{@"knowledge_group":knowledgetGroupId,@"note_id":noteId};
    [[self class] get:urlstr parameters:param rspBlock:block];
}

//创建资源
+ (void)createTagWithModel:(YIReqResourceCreate*)paramModel
               accessToken:(NSString*)access_token
                  rspBlock:(YiRspBlock)block {
    [self createTagWithMap:[paramModel genReqModel] accessToken:access_token rspBlock:block];
}

+ (void)createTagWithMap:(NSDictionary*)paramMap
               accessToken:(NSString*)access_token
                  rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/resources?access_token=%@",access_token];
    [[self class] post:urlstr parameters:paramMap rspBlock:block];
}

//查询单个资源
+ (void)getResourcesWithResourceId:(NSString*)resourceId
                       accessToken:(NSString*)access_token
                          rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/resources/%@?access_token=%@",resourceId,access_token];
    [[self class] get:urlstr parameters:nil rspBlock:block];
}

//更新资源
+ (void)updateResourceWithModel:(YIReqResourceUpdate*)paramModel
                     resourceId:(NSString*)resourceId
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block {
    [self updateResourceWithMap:[paramModel genReqModel] resourceId:resourceId accessToken:access_token rspBlock:block];
}

+ (void)updateResourceWithMap:(NSDictionary*)paramMap
                     resourceId:(NSString*)resourceId
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/resources/%@?access_token=%@",resourceId,access_token];
    [[self class] put:urlstr parameters:paramMap rspBlock:block];
}

//删除资源
+ (void)deleteResourceWithModel:(YIReqResourceDelete*)paramModel
                     resourceId:(NSString*)resourceId
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/resources/%@?access_token=%@",resourceId,access_token];
    NSMutableDictionary *param = [[paramModel genReqModel] mutableCopy];
    [param setObject:resourceId forKey:@"id"];
    [[self class] put:urlstr parameters:param rspBlock:block];
}
+ (void)deleteResourceWithResourceId:(NSString*)resourceId
                            expunged:(int64_t)expunged
                                 usn:(int)usn
                         accessToken:(NSString*)access_token
                            rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/resources/%@?access_token=%@",resourceId,access_token];
    NSDictionary *param = @{@"id":resourceId,@"expunged":@(expunged),@"usn":@(usn)};
    [[self class] put:urlstr parameters:param rspBlock:block];
}
@end
