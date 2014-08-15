//
//  YIMTodo.m
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMTodo.h"

@implementation YIMTodo

- (id)initWithJson:(NSDictionary*)json
{
    self = [super init];
    if (self) {
        @try {
            if([self isKeyExistInJson:json key:@"id"]){
                self.id_ = [json objectForKey:@"id"];
            }
            if([self isKeyExistInJson:json key:@"title"]){
                self.title = [json objectForKey:@"title"];
            }
            if([self isKeyExistInJson:json key:@"usn"]){
                self.usn = [[json objectForKey:@"usn"] intValue];
            }
            if([self isKeyExistInJson:json key:@"startAt"]){
                self.startAt = [[json objectForKey:@"startAt"] longLongValue];
            }
            if([self isKeyExistInJson:json key:@"completeAt"]){
                self.completeAt = [[json objectForKey:@"completeAt"] longLongValue];
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
