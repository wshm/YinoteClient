//
//  YIReqTagCreate.h
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqTagCreate.h"

@implementation YIReqTagCreate
- (id)genReqModel {
    NSAssert(self.name != nil, @"YIReqTagCreate:genReqModel: Argument must be non-nil");
    return @{@"id":self.id_,@"name":self.name};
}
@end
