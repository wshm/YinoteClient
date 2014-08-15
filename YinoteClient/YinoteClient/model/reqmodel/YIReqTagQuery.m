//
//  YIReqTagQuery.m
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqTagQuery.h"

@interface YIReqTagQuery()
@property(nonatomic,assign) BOOL notebookIdSet;
@property(nonatomic,assign) BOOL nameLikeSet;
@property(nonatomic,assign) BOOL withNoteCountSet;
@property(nonatomic,assign) BOOL hasNoteSet;
@end

@implementation YIReqTagQuery

- (id)genReqModel {
    NSMutableDictionary *param = [@{} mutableCopy];
    if (self.notebookIdSet) {
        [param setObject:self.notebookId forKey:@"notebook_id"];
    }
    if (self.nameLikeSet) {
        [param setObject:self.nameLike forKey:@"name_like"];
    }
    if (self.withNoteCountSet) {
        [param setObject:@(self.withNoteCount) forKey:@"with_note_count"];
    }
    if (self.hasNoteSet) {
        [param setObject:@(self.hasNote) forKey:@"has_note"];
    }
    if (param.count > 0) {
        return param;
    } else {
        return nil;
    }
}

- (void)setNotebookId:(NSString *)notebookId {
    _notebookId = notebookId;
    self.notebookIdSet = YES;
}

- (void)setNameLike:(NSString *)nameLike {
    _nameLike = nameLike;
    self.nameLikeSet = YES;
}

- (void)setWithNoteCount:(BOOL)withNoteCount {
    _withNoteCount = withNoteCount;
    self.withNoteCountSet = YES;
}

- (void)setHasNote:(BOOL)hasNote {
    _hasNote = hasNote;
    self.hasNoteSet = YES;
}
@end
