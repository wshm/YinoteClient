//
//  YISocialshareClient.m
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YISocialshareClient.h"

@implementation YISocialshareClient

//管理笔记的社会化分享和获取URL
+ (void)getSocialShareWithNoteId:(NSString*)noteId
                     accessToken:(NSString*)access_token
                        rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/notes.json/%@/socialshare?access_token=%@",noteId,access_token];
    [[self class] get:urlstr parameters:nil rspBlock:block];
}

//发布笔记 撤销发布
+ (void)publicSocialShareWithNoteId:(NSString*)noteId
                         makePublic:(BOOL)make_public
                        accessToken:(NSString*)access_token
                           rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/notes.json/%@/socialshare?access_token=%@",noteId,access_token];
    NSDictionary *param = @{@"make_public":@(make_public)};
    [[self class] get:urlstr parameters:param rspBlock:block];
}

@end
