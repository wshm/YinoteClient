//
//  YIMNoteMetadata.m
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMNoteMetadata.h"
#import "YIMNoteAttribute.h"
#import "YIMLargestResource.h"

@implementation YIMNoteMetadata

- (id)initWithJson:(NSDictionary *)json
{
    self = [super init];
    if(self){
        @try {
            if([self isKeyExistInJson:json key:@"id"]){
                self.id_ = [json objectForKey:@"id"];
            }
            if([self isKeyExistInJson:json key:@"title"]){
                self.title = [json objectForKey:@"title"];
            }
            if([self isKeyExistInJson:json key:@"summary"]){
                self.summary = [json objectForKey:@"summary"];
            }
            if([self isKeyExistInJson:json key:@"content"]){
                self.content = [json objectForKey:@"content"];
            }
            if([self isKeyExistInJson:json key:@"contentLength"]){
                self.contentLength = [[json objectForKey:@"contentLength"] intValue];
            }
            if([self isKeyExistInJson:json key:@"contentHash"]){
                self.contentHash = [json objectForKey:@"contentHash"];
            }
            
            if([self isKeyExistInJson:json key:@"created"]){
                self.created = [[json objectForKey:@"created"] longLongValue];
            }
            if([self isKeyExistInJson:json key:@"updated"]){
                self.updated = [[json objectForKey:@"updated"] longLongValue];
            }
            if([self isKeyExistInJson:json key:@"deleted"]){
                self.deleted = [[json objectForKey:@"deleted"] longLongValue];
            }
            if([self isKeyExistInJson:json key:@"active"]){
                self.active = [[json objectForKey:@"active"] boolValue];
            }
            if([self isKeyExistInJson:json key:@"usn"]){
                self.usn = [[json objectForKey:@"usn"] intValue];
            }
            if([self isKeyExistInJson:json key:@"notebookId"]){
                self.notebookId = [json objectForKey:@"notebookId"];
            }
            if([self isKeyExistInJson:json key:@"tagIds"]){
                self.tagIds = [json objectForKey:@"tagIds"];
            }
            if([self isKeyExistInJson:json key:@"knowledgeGroup"]){
                self.knowledgeGroup = [json objectForKey:@"knowledgeGroup"];
            }
            if([self isKeyExistInJson:json key:@"attributes"]){
                NSDictionary *attributesDic = [json objectForKey:@"attributes"];
                YIMNoteAttribute *attributes = nil;
                if(attributesDic != nil && [attributesDic count] > 0){
                    attributes = [[YIMNoteAttribute alloc] initWithJson:attributesDic];
                    self.attributes = attributes;
                }else{
                    self.attributes = nil;
                }
            }
            if([self isKeyExistInJson:json key:@"largestResource"]){
                NSDictionary *largestResourceDic = [json objectForKey:@"largestResource"];
                if (largestResourceDic != nil && [largestResourceDic count] > 0) {
                    self.largestResource = [[YIMLargestResource alloc] initWithJson:largestResourceDic];
                }
            }
            if ([self isKeyExistInJson:json key:@"published"]) {
                self.published = [[json objectForKey:@"published"] boolValue];
            }
            if ([self isKeyExistInJson:json key:@"htmlContent"]) {
                self.htmlContent = [json objectForKey:@"htmlContent"];
            }
            if ([self isKeyExistInJson:json key:@"latestEditor"]) {
                self.latestEditor = [json objectForKey:@"latestEditor"];
            }
            if ([self isKeyExistInJson:json key:@"creator"]) {
                self.creator = [json objectForKey:@"creator"];
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
