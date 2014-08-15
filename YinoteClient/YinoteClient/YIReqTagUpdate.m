//
//  YIReqTagUpdate.m
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqTagUpdate.h"

@implementation YIReqTagUpdate
- (id)genReqModel {
    NSAssert(self.name != nil, @"YIReqTagUpdate:genReqModel: Argument must be non-nil");
    return @{@"usn":@(self.usn),@"name":self.name};
}
@end
