//
//  YIUserInfoClient.h
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIBaseClient.h"
@class YIMUserInfo;
@interface YIUserInfoClient : YIBaseClient
//1.0 userinfo.json : 用户信息相关操作

/**
 *  获取用户信息
 *
 *  @param access_token access_token
 *  @param block        请求回调块
 */
+ (void)getUserInfoWithToken:(NSString*)access_token
                    rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block;
/**
 *  更新用户信息
 *
 *  @param userInfo     用户信息
 *  @param access_token access_token
 *  @param block        请求回调块
 */
+ (void)updateUserInfo:(YIMUserInfo *)userInfo
           accessToken:(NSString*)access_token
              rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block;
@end
