//
//  YIReqNoteCreate.h
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMBase.h"
#import "YIMNoteAttribute.h"
#import "YIMResourceMetadata.h"

@interface YIReqNoteCreate : YIMBase

@property(nonatomic,strong) NSString *id_;
@property(nonatomic,strong) NSString *title;
@property(nonatomic,strong) NSString *summary;
@property(nonatomic,strong) NSString *content;
@property(nonatomic,strong) NSString *contentHash;
@property(nonatomic,assign) int64_t created;
@property(nonatomic,strong) NSString *notebookId;

@property(nonatomic,strong) NSArray *tagIds;
@property(nonatomic,assign) int64_t updated;
@property(nonatomic,assign) int64_t deleted;
@property(nonatomic,strong) YIMNoteAttribute *attributes;
@property(nonatomic,strong) YIMResourceMetadata *largestResource;

@end
