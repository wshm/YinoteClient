//
//  YIBaseClient.m
//  YinoteClient
//
//  Created by wshm on 14-8-7.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIBaseClient.h"
#import "YIApiError.h"
#import "YIRawHttpClient.h"
#import "YIApiTool.h"

@implementation YIBaseClient
+ (void)post:(NSString*)URLString
  parameters:(NSDictionary *)parameters
    rspBlock:(void (^)(id, NSError *, YIApiError *))block {
    [[YIRawHttpClient sharedClient] POST:URLString parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)operation.response;
        YIApiError *errorStatus = [YIApiTool getApiErrorWithStatusCode:httpResponse.statusCode];
        if (errorStatus) {
            if (block) {
                block(nil,nil,errorStatus);
            }
            return ;
        }
        YIApiError *errorRsp = [YIApiTool getApiErrorWithRsp:responseObject];
        if (errorRsp) {
            if (block) {
                block(nil,nil,errorRsp);
            }
            return ;
        }
        if (block) {
            block(responseObject,nil,nil);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        /*{"error":"TagNameConflict","error_description":"标签名称[apitag]重复","error_uri":"/api/tags.json?access_token=633e7a8c2019404f894d7f8e60dd4134","request_id":"633e7a8c2019404f894d7f8e60dd4134"}*/
        if (block) {
            block(nil,error,nil);
        }
    }];
}

+ (void)multiPost:(NSString*)URLString parameters:(NSDictionary *)parameters rspBlock:(void (^)(id, NSError *, YIApiError *))block {
    [[YIRawHttpClient sharedClient] POST:URLString parameters:parameters constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
        
    } success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)operation.response;
        YIApiError *errorStatus = [YIApiTool getApiErrorWithStatusCode:httpResponse.statusCode];
        if (errorStatus) {
            if (block) {
                block(nil,nil,errorStatus);
            }
            return ;
        }
        YIApiError *errorRsp = [YIApiTool getApiErrorWithRsp:responseObject];
        if (errorRsp) {
            if (block) {
                block(nil,nil,errorStatus);
            }
            return ;
        }
        if (block) {
            block(responseObject,nil,nil);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (block) {
            block(nil,error,nil);
        }
    }];
}
+ (void)get:(NSString*)URLString
 parameters:(NSDictionary *)parameters
   rspBlock:(void (^)(id, NSError *, YIApiError *))block {
    [[YIRawHttpClient sharedClient] GET:URLString parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)operation.response;
        YIApiError *errorStatus = [YIApiTool getApiErrorWithStatusCode:httpResponse.statusCode];
        if (errorStatus) {
            if (block) {
                block(nil,nil,errorStatus);
            }
            return ;
        }
        YIApiError *errorRsp = [YIApiTool getApiErrorWithRsp:responseObject];
        if (errorRsp) {
            if (block) {
                block(nil,nil,errorRsp);
            }
            return ;
        }
        if (block) {
            block(responseObject,nil,nil);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (block) {
            block(nil,error,nil);
        }
    }];
}

+ (void)put:(NSString*)URLString parameters:(NSDictionary *)parameters rspBlock:(void (^)(id, NSError *, YIApiError *))block {
    [[YIRawHttpClient sharedClient] PUT:URLString parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)operation.response;
        YIApiError *errorStatus = [YIApiTool getApiErrorWithStatusCode:httpResponse.statusCode];
        if (errorStatus) {
            if (block) {
                block(nil,nil,errorStatus);
            }
            return ;
        }
        YIApiError *errorRsp = [YIApiTool getApiErrorWithRsp:responseObject];
        if (errorRsp) {
            if (block) {
                block(nil,nil,errorRsp);
            }
            return ;
        }
        if (block) {
            block(responseObject,nil,nil);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (block) {
            block(nil,error,nil);
        }
    }];
}

+ (void)delete:(NSString*)URLString parameters:(NSDictionary *)parameters rspBlock:(void (^)(id, NSError *, YIApiError *))block {
    [[YIRawHttpClient sharedClient] DELETE:URLString parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)operation.response;
        YIApiError *errorStatus = [YIApiTool getApiErrorWithStatusCode:httpResponse.statusCode];
        if (errorStatus) {
            if (block) {
                block(nil,nil,errorStatus);
            }
            return ;
        }
        YIApiError *errorRsp = [YIApiTool getApiErrorWithRsp:responseObject];
        if (errorRsp) {
            if (block) {
                block(nil,nil,errorRsp);
            }
            return ;
        }
        if (block) {
            block(responseObject,nil,nil);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        if (block) {
            block(nil,error,nil);
        }
    }];
}

+  (void)req:(NSString*)URLString
      method:(NSString*)method
        data:(id)data
    rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    NSString *reqUrl = URLString;
    reqUrl = [reqUrl stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSMutableURLRequest *request = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:reqUrl]
                                                           cachePolicy:NSURLRequestReloadIgnoringCacheData  timeoutInterval:10];
    [request setHTTPMethod:method];
    [request setValue: @"application/json" forHTTPHeaderField:@"Content-Type"];
    if ([data isKindOfClass:[NSString class]]) {
        [request setHTTPBody: [data dataUsingEncoding:NSUTF8StringEncoding]];
    } else if ([data isKindOfClass:[NSDictionary class]]) {
        [request setHTTPBody: [NSJSONSerialization dataWithJSONObject:data options:0 error:nil]];
    } else {
        [request setHTTPBody:data];
    }
    
    AFHTTPRequestOperation *operation = [[YIRawHttpClient sharedClient] HTTPRequestOperationWithRequest:request success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"%@",responseObject);
        NSHTTPURLResponse *httpResponse = (NSHTTPURLResponse *)operation.response;
        YIApiError *errorStatus = [YIApiTool getApiErrorWithStatusCode:httpResponse.statusCode];
        if (errorStatus) {
            if (block) {
                block(nil,nil,errorStatus);
            }
            return ;
        }
        YIApiError *errorRsp = [YIApiTool getApiErrorWithRsp:responseObject];
        if (errorRsp) {
            if (block) {
                block(nil,nil,errorStatus);
            }
            return ;
        }
        if (block) {
            block(responseObject,nil,nil);
        }
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"%@",error);
        if (block) {
            block(nil,error,nil);
        }
    }];
    [[YIRawHttpClient sharedClient].operationQueue addOperation:operation];
}
@end
