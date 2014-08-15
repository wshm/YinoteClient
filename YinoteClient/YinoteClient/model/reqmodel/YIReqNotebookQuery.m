//
//  YIReqNotebookQuery.m
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqNotebookQuery.h"

@interface YIReqNotebookQuery()
@property (nonatomic,assign) BOOL statusSet;
@property (nonatomic,assign) BOOL withNoteCountSet;
@property (nonatomic,assign) BOOL hasPublishedNotesSet;
@property (nonatomic,assign) BOOL knowledgeGroupSet;
@property (nonatomic,assign) BOOL parentSet;
@property (nonatomic,assign) BOOL treeFormatSet;
@end

@implementation YIReqNotebookQuery

- (id)genReqModel {
    NSMutableDictionary *param = [@{} mutableCopy];
    if (self.statusSet) {
        switch (self.status) {
            case YINotebookQueryStatusAll:
            {
                break;
            }
            case YINotebookQueryStatusDelete:
            {
                [param setObject:@"expunged" forKey:@"status"];
                break;
            }
            case YINotebookQueryStatusNormal:
            {
                [param setObject:@"normal" forKey:@"status"];
                break;
            }
            default:
            {
                break;
            }
        }
    }
    if (self.withNoteCountSet) {
        [param setObject:@(self.withNoteCountSet) forKey:@"with_note_count"];
    }
    if (self.hasPublishedNotesSet) {
        [param setObject:@(self.hasPublishedNotesSet) forKey:@"has_published_notes"];
    }
    if (self.knowledgeGroupSet) {
        [param setObject:self.knowledgeGroup forKey:@"knowledge_group"];
    }
    if (self.parentSet) {
        [param setObject:self.parent forKey:@"parent"];
    }
    if (self.treeFormatSet) {
        [param setObject:@(self.treeFormat) forKey:@"tree_format"];
    }
    if (param.count > 0) {
        return param;
    } else {
        return nil;
    }
}

- (void)setStatus:(YINotebookQueryStatus)status {
    _status = status;
    self.statusSet = YES;
}

- (void)setWithNoteCount:(BOOL)withNoteCount {
    _withNoteCount = withNoteCount;
    self.withNoteCountSet = YES;
}

- (void)setHasPublishedNotes:(BOOL)hasPublishedNotes {
    _hasPublishedNotes = hasPublishedNotes;
    self.hasPublishedNotesSet = YES;
}

- (void)setKnowledgeGroup:(NSString *)knowledgeGroup {
    _knowledgeGroup = knowledgeGroup;
    self.knowledgeGroupSet = YES;
}

- (void)setParent:(NSString *)parent {
    _parent = parent;
    self.parentSet = YES;
}

- (void)setTreeFormat:(BOOL)treeFormat {
    _treeFormat = treeFormat;
    self.treeFormat = YES;
}
@end
