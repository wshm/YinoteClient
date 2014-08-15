//
//  YIReqKnowledgeGroupMember.m
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqKnowledgeGroupMember.h"

@implementation YIReqKnowledgeGroupMember

-(id)genReqModel
{
    if (_providerAccountIds == nil) {
        self.providerAccountIds = @[];
    }
    NSDictionary *reqParam = @{@"providerAccountIds":self.providerAccountIds};
    return reqParam;
}
@end
