//
//  YIMTag.m
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMTag.h"

@implementation YIMTag

- (id)initWithJson:(NSDictionary *)json;
{
    self = [super init];
    if(self){
        if([json objectForKey:@"id"] != [NSNull null]){
            self.id_ = [json objectForKey:@"id"];
        }
        if([json objectForKey:@"name"] != [NSNull null]){
            self.name = [json objectForKey:@"name"];
        }
        if([json objectForKey:@"usn"] != [NSNull null]){
            self.usn = [[json objectForKey:@"usn"] intValue];
        }
    }
    return self;
}

@end
