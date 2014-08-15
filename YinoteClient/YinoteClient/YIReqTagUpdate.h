//
//  YIReqTagUpdate.h
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMBase.h"

@interface YIReqTagUpdate : YIMBase
@property (nonatomic,assign) NSInteger usn;
@property (nonatomic,strong) NSString *name;
@end
