//
//  YIReqNotebookCreate.m
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqNotebookCreate.h"
@interface YIReqNotebookCreate()

@property(nonatomic,assign) BOOL parentSet;
@property(nonatomic,assign) BOOL knowledgeGroupSet;

@end

@implementation YIReqNotebookCreate

- (id)genReqModel {
    NSMutableDictionary *param = [@{@"id":self.id_,@"name":self.name} mutableCopy];
    if (self.parentSet && self.parent) {
        [param setObject:self.parent forKey:@"parent"];
    }
    if (self.knowledgeGroupSet && self.knowledgeGroup) {
        [param setObject:self.knowledgeGroup forKey:@"knowledgeGroup"];
    }
    return param;
}

- (void)setParent:(NSString *)parent {
    _parent = parent;
    self.parentSet = YES;
}

- (void)setKnowledgeGroup:(NSString *)knowledgeGroup {
    _knowledgeGroup = knowledgeGroup;
    self.knowledgeGroupSet = YES;
}
@end
