//
//  YIMNotebook.m
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMNotebook.h"

@implementation YIMNotebook

-(YIMNotebook*) initWithJson:(NSDictionary*)json
{
    self = [self init];
    if(self){
        
        if([self isKeyExistInJson:json key:@"id"]){
            self.id_ = [json objectForKey:@"id"];
        }
        if([self isKeyExistInJson:json key:@"name"]){
            self.name = [json objectForKey:@"name"];
        }
        if([self isKeyExistInJson:json key:@"usn"]){
            self.usn = [[json objectForKey:@"usn"] intValue];
        }
        if([self isKeyExistInJson:json key:@"defaultNotebook"]){
            self.defaultNotebook = [[json objectForKey:@"defaultNotebook"] boolValue];
        }
        if([self isKeyExistInJson:json key:@"serviceCreated"]){
            self.serviceCreated = [[json objectForKey:@"serviceCreated"] longLongValue];
        }
        if([self isKeyExistInJson:json key:@"serviceUpdated"]){
            self.serviceUpdated = [[json objectForKey:@"serviceUpdated"] longLongValue];
        }
        if([self isKeyExistInJson:json key:@"knowledgeGroup"]){
            self.knowledgeGroup = [json objectForKey:@"knowledgeGroup"];
        }
        if([self isKeyExistInJson:json key:@"expunged"]){
            self.expunged = [[json objectForKey:@"expunged"] longLongValue];
        }
        if([self isKeyExistInJson:json key:@"parent"]){
            self.parent = [json objectForKey:@"parent"];
        }
    }
    return self;
}

@end
