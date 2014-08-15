//
//  YIReqDiscussionCreate.m
//  YinoteClient
//
//  Created by wshm on 14-8-12.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqDiscussionCreate.h"

@implementation YIReqDiscussionCreate
- (id)genReqModel {
    NSAssert(self.content != nil, @"YIReqDiscussionCreate:genReqModel: Argument must be non-nil");
    return @{@"content":self.content};
}
@end
