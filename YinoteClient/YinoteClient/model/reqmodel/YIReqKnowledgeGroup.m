//
//  YIRKnowledgeGroupCreate.m
//  YinoteClient
//
//  Created by wshm on 14-8-8.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqKnowledgeGroup.h"

@implementation YIReqKnowledgeGroup

- (id)genReqModel {
    NSAssert(self.name != nil, @"YIRKnowledgeGroupCreate:genReqModel: Argument must be non-nil");
    NSDictionary *reqParam = @{@"nmae":self.name};
    return reqParam;
}

@end
