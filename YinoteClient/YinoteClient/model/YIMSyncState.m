//
//  YIMSyncState.m
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

/*
#if !__has_feature(objc_arc)
#error This file must be compiled with ARC. Either turn on ARC for the project or use -fobjc-arc flag
#endif
*/
#import "YIMSyncState.h"

@implementation YIMSyncState

- (id)initWithCurrentTime:(int64_t)currentTime fullSyncBefore:(int64_t)fullSyncBefore updateCount:(int)updateCount knowledgeGroup:(NSString *)knowledgeGroup {
    self = [super init];
    if(self){
        self.updateCount = currentTime;
        self.fullSyncBefore = fullSyncBefore;
        self.updateCount = updateCount;
        self.knowledgeGroup = knowledgeGroup;
    }
    return self;
}
- (id)initWithJson:(NSDictionary *)json {
    self = [super init];
    if (self) {
        @try {
            if ([self isKeyExistInJson:json key:@"currentTime"]) {
                self.currentTime = [[json objectForKey:@"currentTime"] longLongValue];
            }
            if ([self isKeyExistInJson:json key:@"fullSyncBefore"]) {
                self.fullSyncBefore = [[json objectForKey:@"fullSyncBefore"] integerValue];
            }
            if ([self isKeyExistInJson:json key:@"knowledgeGroup"]) {
                self.knowledgeGroup = [json objectForKey:@"knowledgeGroup"];
            }
            if ([self isKeyExistInJson:json key:@"updateCount"]) {
                self.updateCount = [[json objectForKey:@"updateCount"] integerValue];
            }
        }
        @catch (NSException *exception) {
            NSLog(@"%s,%@",__func__,exception);
            return nil;
        }
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p, currentTime: %lld, fullSyncBefore: %lld ,knowledgeGroup:%@,updateCount:%d>", NSStringFromClass([self class]), self, self.currentTime, self.fullSyncBefore ,self.knowledgeGroup,self.updateCount];
}
@end
