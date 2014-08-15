//
//  YIReqNoteQuery.m
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqNoteQuery.h"

@interface YIReqNoteQuery()

@property (nonatomic,assign) BOOL notebookIdSet;
@property (nonatomic,assign) BOOL knowledgeGroupSet;
@property (nonatomic,assign) BOOL tagIdSet;
@property (nonatomic,assign) BOOL withTagNameSet;
@property (nonatomic,assign) BOOL geoDefinedSet;
@property (nonatomic,assign) BOOL statusSet;
@property (nonatomic,assign) BOOL publishedSet;
@property (nonatomic,assign) BOOL shareKeySet;
@property (nonatomic,assign) BOOL withNicknameSet;
@property (nonatomic,assign) BOOL startPageSet;
@property (nonatomic,assign) BOOL page_sizeSet;
@property (nonatomic,assign) BOOL withPublicLinkSet;
@property (nonatomic,assign) BOOL wordsSet;
@property (nonatomic,assign) BOOL withNotebookNameSet;

@end

@implementation YIReqNoteQuery

- (id)genReqModel {
    NSMutableDictionary *param = [@{} mutableCopy];
    if (self.statusSet) {
        switch (self.status) {
            case YINoteQueryStatusAll:
            {
                break;
            }
            case YINoteQueryStatusDeleted:
            {
                [param setObject:@"deleted" forKey:@"status"];
                break;
            }
            case YINoteQueryStatusExpunged:
            {
                [param setObject:@"expunged" forKey:@"status"];
                break;
            }
            case YINoteQueryStatusNormal:
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
    if (self.notebookIdSet && self.notebookId) {
        [param setObject:self.notebookId forKey:@"notebook_id"];
    }
    if (self.knowledgeGroupSet && self.knowledgeGroup) {
        [param setObject:self.knowledgeGroup forKey:@"knowledge_group"];
    }
    if (self.tagIdSet && self.tagId) {
        [param setObject:self.tagId forKey:@"tag_id"];
    }
    if (self.withTagNameSet) {
        [param setObject:@(self.withTagName) forKey:@"with_tag_name"];
    }
    if (self.geoDefinedSet) {
        [param setObject:@(self.geoDefined) forKey:@"geo_defined"];
    }
    if (self.publishedSet) {
        [param setObject:@(self.published) forKey:@"published"];
    }
    if (self.shareKeySet && self.shareKey) {
        [param setObject:self.shareKey forKey:@"shareKey"];
    }
    if (self.withNicknameSet) {
        [param setObject:@(self.withNickname) forKey:@"with_nickname"];
    }
    if (self.startPage) {
        [param setObject:@(self.startPage) forKey:@"start_page"];
    }
    if (self.page_sizeSet) {
        [param setObject:@(self.page_size) forKey:@"page_size"];
    }
    if (self.withPublicLinkSet) {
        [param setObject:@(self.withPublicLink) forKey:@"with_public_link"];
    }
    if (self.wordsSet && self.words) {
        [param setObject:self.words forKey:@"words"];
    }
    if (self.withNotebookNameSet) {
        [param setObject:@(self.withNotebookName) forKey:@"with_notebook_name"];
    }
    if (param.count > 0) {
        return param;
    } else {
        return nil;
    }
}

- (void)setValue:(id)value forKey:(NSString *)key {
    
}
- (void)setNotebookId:(NSString *)notebookId {
    _notebookId = notebookId;
    self.notebookIdSet = YES;
}

- (void)setKnowledgeGroup:(NSString *)knowledgeGroup {
    _knowledgeGroup = knowledgeGroup;
    self.knowledgeGroupSet = YES;
}

- (void)setTagId:(NSString *)tagId {
    _tagId = tagId;
    self.tagIdSet = YES;
}

- (void)setWithTagName:(BOOL)withTagName {
    _withTagName = withTagName;
    self.withTagNameSet = YES;
}

- (void)setGeoDefined:(BOOL)geoDefined {
    _geoDefined = geoDefined;
    self.geoDefinedSet = YES;
}

- (void)setStatus:(YINoteQueryStatus)status {
    _status = status;
    self.statusSet = YES;
}

- (void)setPublished:(BOOL)published {
    _published = published;
    self.publishedSet = YES;
}

- (void)setShareKey:(NSString *)shareKey {
    _shareKey = shareKey;
    self.shareKeySet = YES;
}

- (void)setWithNickname:(BOOL)withNickname {
    _withNickname = withNickname;
    self.withNickname = YES;
}

- (void)setStartPage:(NSInteger)startPage {
    _startPage = startPage;
    self.startPageSet = YES;
}

- (void)setPage_size:(NSInteger)page_size {
    _page_size = page_size;
    self.page_sizeSet = YES;
}

- (void)setWithPublicLink:(BOOL)withPublicLink {
    _withPublicLink = withPublicLink;
    self.withPublicLinkSet = YES;
}

- (void)setWords:(NSString *)words {
    _words = words;
    self.wordsSet = YES;
}

- (void)setWithNotebookName:(BOOL)withNotebookName {
    _withNotebookName = withNotebookName;
    self.withNotebookNameSet = YES;
}
@end
