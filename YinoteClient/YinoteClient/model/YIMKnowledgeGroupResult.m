//
//  YIMKnowledgeGroupResult.m
//  YinoteClient
//
//  Created by wshm on 14-8-8.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMKnowledgeGroupResult.h"
#import "YIMKnowledgeMember.h"

@implementation YIMKnowledgeGroupResult

-(id) initWithJson:(NSDictionary *)json
{
    self = [super init];
    if(self){
        @try {
            _members = [[NSMutableArray alloc] init];
            if([self isKeyExistInJson:json key:@"id"]){
                self.id_= [json objectForKey:@"id"];
            }
            if([self isKeyExistInJson:json key:@"creator"]){
                self.creator= [json objectForKey:@"creator"];
            }
            if([self isKeyExistInJson:json key:@"name"]){
                self.name= [json objectForKey:@"name"];
            }
            if([self isKeyExistInJson:json key:@"creatorNickname"]){
                self.creatorNickname= [json objectForKey:@"creatorNickname"];
            }
            if([self isKeyExistInJson:json key:@"version"]){
                self.version= [[json objectForKey:@"version"] integerValue];
            }
            if([self isKeyExistInJson:json key:@"members"]){
                NSMutableArray *array = [json objectForKey:@"members"];
                for (NSDictionary *dic in array) {
                    if (dic) {
                        YIMKnowledgeMember *dto = [[YIMKnowledgeMember alloc] initWithJson:dic];
                        [_members addObject:dto];
                    }
                }
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
