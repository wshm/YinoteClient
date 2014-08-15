//
//  YIMSyncChunk.m
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMSyncChunk.h"
#import "YIMNotebook.h"
#import "YIMTag.h"
#import "YIMTodo.h"
#import "YIMNoteMetadata.h"
#import "YIMResourceMetadata.h"

@implementation YIMSyncChunk
- (id)init
{
    self = [super init];
    if(self) {
        self.todos = [[NSMutableArray alloc] init];
        self.tags = [[NSMutableArray alloc] init];
        self.notebooks = [[NSMutableArray alloc] init];
        self.notes = [[NSMutableArray alloc] init];
        self.resources = [[NSMutableArray alloc] init];
        self.expungedNotebooks = [[NSMutableSet alloc] init];
        self.expungedNotes = [[NSMutableSet alloc] init];
        self.expungedResources = [[NSMutableSet alloc] init];
        self.expungedTags = [[NSMutableSet alloc] init];
    }
    
    return self;
}

- (void) accumulate:(id)jsonData {
    NSDictionary *jsonObject = nil;
    if ([jsonData isKindOfClass:[NSString class]]) {
        NSData *data = [jsonData dataUsingEncoding:NSUTF8StringEncoding];
        NSError *error;
        jsonObject = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableLeaves error:&error];
        if (error) {
            NSLog(@"%s,%@",__func__,error);
        }
    } else if ([jsonData isKindOfClass:[NSDictionary class]]) {
        jsonObject = (NSDictionary *)jsonData;
    } else if ([jsonData isKindOfClass:[NSData class]]) {
        NSError *error;
        jsonObject = [NSJSONSerialization JSONObjectWithData:jsonData options:NSJSONReadingMutableLeaves error:&error];
        if (error) {
            NSLog(@"%s,%@",__func__,error);
        }
    }
    [self accumulateWithJson:jsonObject];
}

- (void) accumulateWithJson:(NSDictionary*)json
{
    @try {
        NSDictionary *jsonObject = nil;
        if ([json isKindOfClass:[NSDictionary class]]) {
            jsonObject = (NSDictionary *)json;
            if([self isKeyExistInJson:json key:@"chunkHighUSN"]){
                self.chunkHighUSN = [[jsonObject objectForKey:@"chunkHighUSN"] intValue] ;
            }
            if([self isKeyExistInJson:json key:@"currentTime"]){
                self.currentTime = [[jsonObject objectForKey:@"currentTime"] longLongValue];
            }
            if([self isKeyExistInJson:json key:@"updateCount"]){
                self.updateCount = [[jsonObject objectForKey:@"updateCount"] intValue];
            }
            
            if([self isKeyExistInJson:json key:@"todos"]){
                NSArray *todosArray = [jsonObject objectForKey:@"todos"];
                if(todosArray != nil && [todosArray count] > 0){
                    for(int i = 0;i<[todosArray count];i++){
                        NSDictionary *todoDic = [todosArray objectAtIndex:i];
                        YIMTodo *todoDto = [[YIMTodo alloc] initWithJson:todoDic];
                        if (todoDto != nil) {
                            [self.todos addObject:todoDto];
                        }
                    }
                }
            }
            if([self isKeyExistInJson:json key:@"notes"]){
                NSArray *notesArray  = [jsonObject objectForKey:@"notes"];
                if(notesArray != nil && [notesArray count] > 0){
                    for (int i = 0; i < [notesArray count]; i++) {
                        NSDictionary *noteDic = [notesArray objectAtIndex:i];
                        YIMNoteMetadata *noteDto = [[YIMNoteMetadata alloc] initWithJson:noteDic];
                        if (noteDto != nil) {
                            [self.notes addObject:noteDto];
                        }
                    }
                }
            }
            if([self isKeyExistInJson:json key:@"notebooks"]){
                NSArray *notebooksArray = [jsonObject objectForKey:@"notebooks"];
                if(notebooksArray != nil && [notebooksArray count] > 0){
                    for (int i = 0; i < [notebooksArray count]; i++) {
                        NSDictionary *notebooksDic = [notebooksArray objectAtIndex:i];
                        YIMNotebook *notebookDto = [[YIMNotebook alloc] initWithJson:notebooksDic];
                        if (notebookDto != nil) {
                            [self.notebooks addObject:notebookDto];
                        }
                    }
                }
            }
            if([self isKeyExistInJson:json key:@"tags"]){
                NSArray *tagsArray = [jsonObject objectForKey:@"tags"];
                if(tagsArray != nil && [tagsArray count] > 0){
                    for (int i = 0; i< [tagsArray count]; i++) {
                        NSDictionary *tagsDic = [tagsArray objectAtIndex:i];
                        YIMTag *tagsDto = [[YIMTag alloc] initWithJson:tagsDic];
                        if (tagsDto != nil) {
                            [self.tags addObject:tagsDto];
                        }
                    }
                }
            }
            if([self isKeyExistInJson:json key:@"resources"]){
                NSArray *resourcesArray = [jsonObject objectForKey:@"resources"];
                if(resourcesArray != nil && [resourcesArray count] > 0){
                    for (int i = 0; i < [resourcesArray count]; i++) {
                        NSDictionary *resourcesDic = [resourcesArray objectAtIndex:i];
                        YIMResourceMetadata  *resourceMetadataDto  =  [[YIMResourceMetadata alloc]initWithJson:resourcesDic];
                        if (resourceMetadataDto != nil) {
                            [self.resources addObject:resourceMetadataDto];
                        }
                    }
                }
            }
            if([self isKeyExistInJson:json key:@"expungedNotes"]){
                [self.expungedNotes addObjectsFromArray:[jsonObject objectForKey:@"expungedNotes"]];
            }
            if([self isKeyExistInJson:json key:@"expungedNotebooks"]){
                [self.expungedNotebooks addObjectsFromArray:[jsonObject objectForKey:@"expungedNotebooks"]];
            }
            if([self isKeyExistInJson:json key:@"expungedTags"]){
                [self.expungedTags addObjectsFromArray:[jsonObject objectForKey:@"expungedTags"]];
            }
            if([self isKeyExistInJson:json key:@"expungedResources"]){
                [self.expungedResources addObjectsFromArray:[jsonObject objectForKey:@"expungedResources"]];
            }
        }
    }
    @catch (NSException *exception) {
        NSLog(@"%s,%@",__func__,exception);
    }
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<%@: %p, chunkHighUSN: %d, updateCount: %d ,currentTime:%lld,todos:%@,notes:%@,notebooks:%@,tags:%@,resources:%@,expungedNotes:%@,expungedNotebooks:%@,expungedTags:%@,expungedResources:%@>", NSStringFromClass([self class]), self, self.chunkHighUSN, self.updateCount ,self.currentTime,self.todos,self.notes,self.notebooks,self.tags,self.resources,self.expungedNotes,self.expungedNotebooks,self.expungedTags,self.expungedResources];
}
@end
