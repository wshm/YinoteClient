//
//  YIUserInfoClient.m
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIUserInfoClient.h"
#import "YIApiTool.h"
#import "YIMUserInfo.h"
#import "YIApiError.h"

@implementation YIUserInfoClient

// 获取用户信息
+ (void)getUserInfoWithToken:(NSString*)access_token rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/userinfo.json?access_token=%@",access_token];
    [[self class] get:urlstr parameters:nil rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        if (datas != nil) {
            YIMUserInfo *userInfo = [YIApiTool getUserInfo:datas];
            if (block) {
                block(userInfo,error,apiError);
            }
        } else {
            if (block) {
                block(datas,error,apiError);
            }
        }
    }];
//    [[self class] get:urlstr parameters:nil rspBlock:block];
}
// 更新用户信息
+ (void)updateUserInfo:(YIMUserInfo *)userInfo
           accessToken:(NSString*)access_token
              rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/userinfo.json?access_token=%@",access_token];
    NSMutableDictionary *param = [@{} mutableCopy];
    if (userInfo.nickname) {
        [param setObject:userInfo.nickname forKey:@"nickname"];
    }
    if (userInfo.signature) {
        [param setObject:userInfo.signature forKey:@"signature"];
    }
    [[self class] put:urlstr parameters:param rspBlock:block];
}

@end
