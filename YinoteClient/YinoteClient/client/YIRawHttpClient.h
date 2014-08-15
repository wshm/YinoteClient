//
//  YIRawHttpClient.h
//  YinoteClient
//
//  Created by wshm on 14-6-26.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "AFHTTPRequestOperationManager.h"
@interface YIRawHttpClient : AFHTTPRequestOperationManager

+ (instancetype)sharedClient;

@end
