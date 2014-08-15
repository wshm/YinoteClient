//
//  YIMVersioned.m
//  YinoteClient
//
//  Created by wshm on 14-8-12.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMVersioned.h"

@implementation YIMVersioned
- (id)initWithJson:(NSDictionary *)json {
    self = [super init];
    if (self) {
        @try {
            if ([self isKeyExistInJson:json key:@"id"]) {
                self.id_ = [json objectForKey:@"id"];
            }
            if ([self isKeyExistInJson:json key:@"usn"]) {
                self.usn = [[json objectForKey:@"usn"] integerValue];
            }
        }
        @catch (NSException *exception) {
            return nil;
        }
    }
    return self;
}
@end
