//
//  YIReqNoteCreate.m
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqNoteCreate.h"

@interface YIReqNoteCreate()
@property(nonatomic,assign) BOOL tagIdsSet;
@property(nonatomic,assign) BOOL updatedSet;
@property(nonatomic,assign) BOOL deletedSet;
@property(nonatomic,assign) BOOL attributesSet;
@property(nonatomic,assign) BOOL largestResourceSet;
@end

@implementation YIReqNoteCreate


- (id)genReqModel {
    NSMutableDictionary *param = [@{@"id":self.id_,
                                    @"title":self.title,
                                    @"summary":self.summary,
                                    @"content":self.content,
                                    @"contentHash":self.contentHash,
                                    @"created":@(self.created),
                                    @"notebookId":self.notebookId} mutableCopy];
    if (self.tagIdsSet && self.tagIds && self.tagIds.count > 0) {
        [param setObject:self.tagIds forKey:@"tagIds"];
    }
    if (self.attributesSet && self.attributes) {
        NSDictionary *paramAttribute = [self.attributes genReqModel];
        if (paramAttribute != nil) {
            [param setObject:self.attributes forKey:@"attributes"];
        }
    }
    if (self.largestResourceSet && self.largestResource) {
        NSDictionary *paramLargestRes = [self.largestResource genReqModel];
        if (paramLargestRes != nil) {
            [param setObject:self.largestResource forKey:@"largestResource"];
        }
    }
    return param;
}

- (void)setTagIds:(NSArray *)tagIds {
    _tagIds = tagIds;
    self.tagIdsSet = YES;
}

- (void)setUpdated:(int64_t)updated {
    _updated = updated;
    self.updatedSet = YES;
}

- (void)setDeleted:(int64_t)deleted {
    _deleted = deleted;
    self.deleted = YES;
}

- (void)setAttributes:(YIMNoteAttribute *)attributes {
    _attributes = attributes;
    self.attributesSet = YES;
}

- (void)setLargestResource:(YIMResourceMetadata *)largestResource {
    _largestResource = largestResource;
    self.largestResourceSet = YES;
}

@end
