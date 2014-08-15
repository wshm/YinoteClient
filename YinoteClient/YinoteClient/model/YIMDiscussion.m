//
//  YIMDiscussion.m
//  YinoteClient
//
//  Created by wshm on 14-8-13.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMDiscussion.h"

@implementation YIMDiscussion

- (id)initWithJson:(NSDictionary *)json {
    self = [super init];
    if (self) {
        if ([self isKeyExistInJson:json key:@"id"]) {
            self.id_ = [json objectForKey:@"id"];
        }
        if ([self isKeyExistInJson:json key:@"content"]) {
            self.content = [json objectForKey:@"content"];
        }
        if ([self isKeyExistInJson:json key:@"creator"]) {
            self.creator = [json objectForKey:@"creator"];
        }
        if ([self isKeyExistInJson:json key:@"creatorNickname"]) {
            self.creatorNickName = [json objectForKey:@"creatorNickname"];
        }
        if ([self isKeyExistInJson:json key:@"created"]) {
            self.created = [[json objectForKey:@"created"] longLongValue];
        }
        if ([self isKeyExistInJson:json key:@"updated"]) {
            self.updated = [[json objectForKey:@"updated"] longLongValue];
        }
        if ([self isKeyExistInJson:json key:@"usn"]) {
            self.usn = [[json objectForKey:@"usn"] integerValue];
        }
    }
    return self;
}
@end
