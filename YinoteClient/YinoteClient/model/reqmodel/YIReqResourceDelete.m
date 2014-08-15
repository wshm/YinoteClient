//
//  YIReqResourceDelete.m
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqResourceDelete.h"

@implementation YIReqResourceDelete

- (id)genReqModel {
    NSDictionary *param = @{@"expunged":@(self.expunged),@"usn":@(self.usn)};
    return param;
}
@end
