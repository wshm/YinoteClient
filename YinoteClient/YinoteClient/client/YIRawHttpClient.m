//
//  YIRawHttpClient.m
//  YinoteClient
//
//  Created by wshm on 14-6-26.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIRawHttpClient.h"
static NSString * const AFAppDotNetAPIBaseURLString = @"http://api.anda.io";
@implementation YIRawHttpClient

+ (instancetype)sharedClient {
    static YIRawHttpClient *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[YIRawHttpClient alloc] initWithBaseURL:[NSURL URLWithString:AFAppDotNetAPIBaseURLString]];
    });
    
    return _sharedClient;
}

- (id)initWithBaseURL:(NSURL *)url {
    self = [super initWithBaseURL:url];
    if (self) {
//        self.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"text/plain"];
        self.responseSerializer.acceptableContentTypes = [NSSet setWithObject:@"application/json"];
        
        self.requestSerializer = [AFJSONRequestSerializer serializer];
    }
    return self;
}
@end
