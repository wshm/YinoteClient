//
//  YIMKnowledgeMember.m
//  YinoteClient
//
//  Created by wshm on 14-8-8.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMKnowledgeMember.h"

@implementation YIMKnowledgeMember

- (id)initWithJson:(NSDictionary *)json {
    self = [super init];
    if (self) {
        @try {
            if([self isKeyExistInJson:json key:@"id"]){
                self.id_= [json objectForKey:@"id"];
            }
            if([self isKeyExistInJson:json key:@"nickname"]){
                self.nickname= [json objectForKey:@"nickname"];
            }
        }
        @catch (NSException *exception) {
            NSLog(@"%s,%@",__func__,exception);
            return nil;
        }
    }
    return self;
}
@end
