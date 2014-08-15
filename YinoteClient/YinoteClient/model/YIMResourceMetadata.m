//
//  YIMResourceMetadata.m
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMResourceMetadata.h"

@implementation YIMResourceMetadata

-(id)initWithJson:(NSDictionary *)json {
    self = [super init];
    if(self){
        if ([self isKeyExistInJson:json key:@"id"]) {
            self.id_ = [json objectForKey:@"id"];
        }
        if ([self isKeyExistInJson:json key:@"noteId"]) {
            self.noteId = [json objectForKey:@"noteId"];
        }
        if ([self isKeyExistInJson:json key:@"mime"]) {
            self.mime = [json objectForKey:@"mime"];
        }
        if([self isKeyExistInJson:json key:@"width"]){
            self.width = [[json objectForKey:@"width"] intValue];
        }
        if([self isKeyExistInJson:json key:@"height"]){
            self.height = [[json objectForKey:@"height"] intValue];
        }
        if([self isKeyExistInJson:json key:@"usn"]){
            self.usn = [[json objectForKey:@"usn"] intValue];
        }
        if([self isKeyExistInJson:json key:@"cloud189Id"]){
            self.cloud189Id = [[json objectForKey:@"cloud189Id"] longLongValue];
        }
        if([self isKeyExistInJson:json key:@"cloud189Version"]){
            self.cloud189Version = [[json objectForKey:@"cloud189Version"] longLongValue];
        }
        if([self isKeyExistInJson:json key:@"fileExtension"]){
            self.fileExtension = [json objectForKey:@"fileExtension"];
        }
        if([self isKeyExistInJson:json key:@"fileName"]){
            self.fileName = [json objectForKey:@"fileName"];
        }
        if([self isKeyExistInJson:json key:@"cloud189Version"]){
            self.cloud189Version = [[json objectForKey:@"cloud189Version"] longLongValue];
        }
        if([self isKeyExistInJson:json key:@"size"]){
            self.size = [[json objectForKey:@"size"] longLongValue];
        }
    }
    return self;
}

@end
