//
//  YIDiscussionClient.m
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIDiscussionClient.h"
#import "YIApiTool.h"
#import "YIMVersioned.h"

@implementation YIDiscussionClient


//更新评论
+ (void)updateDiscussionWithId:(NSString*)discussionId
                   accessToken:(NSString*)access_token
                   updateModel:(YIReqDiscussionUpdate*)updateModel
                      rspBlock:(YiRspBlock)block {
    if (updateModel == nil) {
        return;
    }
    [self updateDiscussionWithId:discussionId accessToken:access_token paramBody:[updateModel genReqModel] rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        if (datas != nil) {
            YIMVersioned *versioned = [YIApiTool getVersioned:datas];
            if (block) {
                block(versioned,error,apiError);
            }
        } else {
            if (block) {
                block(datas,error,apiError);
            }
        }
    }];
}
+ (void)updateDiscussionWithId:(NSString*)discussionId
                   accessToken:(NSString*)access_token
                     paramBody:(NSDictionary*)paramBody
                      rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/discussions.json/%@?access_token=%@",discussionId,access_token];
    [[self class] put:urlstr parameters:paramBody rspBlock:block];
}

//永久删除评论
+ (void)deleteDiscussionWithId:(NSString*)discussionId
                   accessToken:(NSString*)access_token
                      rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/discussions.json/%@?access_token=%@",discussionId,access_token];
    [[self class] delete:urlstr parameters:nil rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        if (datas != nil) {
            YIMVersioned *versioned = [YIApiTool getVersioned:datas];
            if (block) {
                block(versioned,error,apiError);
            }
        } else {
            if (block) {
                block(datas,error,apiError);
            }
        }
    }];
}
@end
