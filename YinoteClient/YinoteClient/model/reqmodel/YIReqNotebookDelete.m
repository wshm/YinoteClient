//
//  YIReqNotebookDelete.m
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqNotebookDelete.h"

@implementation YIReqNotebookDelete
- (id)genReqModel {
    NSDictionary *param = @{@"expunged":@(self.expunged),@"usn":@(self.usn)};
    return param;
}
@end
