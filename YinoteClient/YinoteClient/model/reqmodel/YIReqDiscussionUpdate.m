//
//  YIReqDiscussionUpdate.m
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqDiscussionUpdate.h"

@implementation YIReqDiscussionUpdate

- (id)genReqModel {
    NSAssert(self.content != nil, @"YIReqDiscussionUpdate:genReqModel: Argument must be non-nil");
    return @{@"content":self.content};
}
@end
