//
//  YIBaseClient.h
//  YinoteClient
//
//  Created by wshm on 14-8-7.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class YIApiError;
typedef void(^YiRspBlock)(id datas, NSError *error,YIApiError *apiError);

@interface YIBaseClient : NSObject
+ (void)get:(NSString*)URLString
 parameters:(NSDictionary *)parameters
   rspBlock:(YiRspBlock)block;

+ (void)post:(NSString*)URLString
  parameters:(NSDictionary *)parameters
    rspBlock:(YiRspBlock)block;

+ (void)multiPost:(NSString*)URLString parameters:(NSDictionary *)parameters rspBlock:(void (^)(id, NSError *, YIApiError *))block;

+ (void)put:(NSString*)URLString parameters:(NSDictionary *)parameters rspBlock:(void (^)(id, NSError *, YIApiError *))block;

+ (void)delete:(NSString*)URLString parameters:(NSDictionary *)parameters rspBlock:(void (^)(id, NSError *, YIApiError *))block;
@end
