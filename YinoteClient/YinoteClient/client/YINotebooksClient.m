//
//  YINotebooksClient.m
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YINotebooksClient.h"

@implementation YINotebooksClient

//搜索笔记本
+ (void)queryNotebookWithModel:(YIReqNotebookQuery*)queryModel
                   accessToken:(NSString*)access_token
                      rspBlock:(YiRspBlock)block {
    [self queryNotebookWithParam:[queryModel genReqModel] accessToken:access_token rspBlock:block];
}

+ (void)queryNotebookWithParam:(NSDictionary*)queryParameter
                   accessToken:(NSString*)access_token
                      rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/notebooks.json?access_token=%@",access_token];
    [[self class] get:urlstr parameters:queryParameter rspBlock:block];
}

//创建笔记本
+ (void)createNotebookWithModel:(YIReqNotebookCreate*)createModel
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block {
    [self createNotebookWithBody:[createModel genReqModel] accessToken:access_token rspBlock:block];
}

+ (void)createNotebookWithBody:(NSDictionary*)paramBody
                   accessToken:(NSString*)access_token
                      rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/notebooks.json?access_token=%@",access_token];
    [[self class] post:urlstr parameters:paramBody rspBlock:block];
}

//更新笔记本
+ (void)updateNotebookWithModel:(YIReqNotebookUpdate*)updateModel
                     notebookId:(NSString*)notebookId
                   accessToken:(NSString*)access_token
                      rspBlock:(YiRspBlock)block {
    [self updateNotebookWithBody:[updateModel genReqModel] notebookId:notebookId accessToken:access_token rspBlock:block];
}
+ (void)updateNotebookWithBody:(NSDictionary*)paramBody
                    notebookId:(NSString*)notebookId
                   accessToken:(NSString*)access_token
                      rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/notebooks.json/%@?access_token=%@",notebookId,access_token];
    [[self class] put:urlstr parameters:paramBody rspBlock:block];
}

//删除笔记本
+ (void)deleteNotebookWithModel:(YIReqNotebookDelete*)deleteModel
                     notebookId:(NSString*)notebookId
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block {
    [self deleteNotebookWithId:notebookId parameter:[deleteModel genReqModel] accessToken:access_token rspBlock:block];
}
+ (void)deleteNotebookWithId:(NSString*)notebookId
                   parameter:(NSDictionary*)parameter
                 accessToken:(NSString*)access_token
                    rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/notebooks.json/%@?access_token=%@",notebookId,access_token];
    [[self class] delete:urlstr parameters:parameter rspBlock:block];
}
@end
