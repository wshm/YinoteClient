//
//  YIMUserInfo.m
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMUserInfo.h"

@implementation YIMUserInfo
- (id)initWithJson:(NSDictionary*)json
{
    self = [super init];
    if(self){
        @try {
            if ([self isKeyExistInJson:json key:@"needWebnoteIntroduction"]) {
                self.needWebnoteIntroduction = [[json objectForKey:@"needWebnoteIntroduction"] boolValue];
            }
            if ([self isKeyExistInJson:json key:@"nickname"]) {
                self.nickname = [json objectForKey:@"nickname"];
            }
            if ([self isKeyExistInJson:json key:@"personalKnowledgeGroup"]) {
                self.personalKnowledgeGroup = [json objectForKey:@"personalKnowledgeGroup"];
            }
            if ([self isKeyExistInJson:json key:@"providerAccountId"]) {
                self.providerAccountId = [json objectForKey:@"providerAccountId"];
            }
            if ([self isKeyExistInJson:json key:@"signature"]) {
                self.signature = [json objectForKey:@"signature"];
            }
            if ([self isKeyExistInJson:json key:@"site"]) {
                self.site = [json objectForKey:@"site"];
            }
            if ([self isKeyExistInJson:json key:@"userId"]) {
                self.userid = [json objectForKey:@"userId"];
            }
        }
        @catch (NSException *exception) {
            return nil;
        }
    }
    return self;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p, needWebnoteIntroduction: %@, nickname: %@ ,personalKnowledgeGroup:%@,providerAccountId:%@,signature:%@,site:%@,userId:%@>", NSStringFromClass([self class]), self, self.needWebnoteIntroduction?@"YES":@"NO", self.nickname ,self.personalKnowledgeGroup,self.providerAccountId,self.signature,self.site,self.userid];
}
@end
