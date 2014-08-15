//
//  YinoteClient.m
//  YinoteClient
//
//  Created by wshm on 14-7-25.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YinoteClient.h"
#import "YIUserInfoClient.h"

@interface YinoteClient()
{
    NSMutableDictionary* _clientDictionary;
}
@property (atomic, retain) NSMutableDictionary* clientDictionary;
@end

@implementation YinoteClient

- (void)dealloc {
    self.clientDictionary = nil;
}

+ (instancetype)sharedInstance {
    static YinoteClient *_sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[YinoteClient alloc] init];
    });
    return _sharedInstance;
}


- (YIUserInfoClient*)getUserInfoClient {

    id userInfo = [self.clientDictionary objectForKey:[self baseKeyString:@"userinfo"]];
    if (userInfo == nil) {
        userInfo = [YIUserInfoClient class];
    }
    YIUserInfoClient *client = [[YIUserInfoClient alloc] init];

    [[YIUserInfoClient class] getUserInfoWithToken:@"" rspBlock:nil];
    return nil;
}

- (NSString*) baseKeyString:(NSString *)value
{
    return [NSString stringWithFormat:@"%@-Yiclient",value];
}
@end
