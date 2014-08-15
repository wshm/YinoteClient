//
//  YIReqResourceUpdate.m
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqResourceUpdate.h"

@implementation YIReqResourceUpdate

- (id)genReqModel {
    NSMutableDictionary *param = [@{@"id":self.id_,
                                    @"mime":self.mime,
                                    @"cloud189Id":@(self.cloud189Id),
                                    @"cloud189Version":@(self.cloud189Version),
                                    @"size":@(self.size),
                                    @"width":@(self.width),
                                    @"height":@(self.height),
                                    @"fileExtension":self.fileExtension} mutableCopy];
    return param;
}

@end
