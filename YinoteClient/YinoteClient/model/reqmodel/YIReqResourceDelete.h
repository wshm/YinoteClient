//
//  YIReqResourceDelete.h
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMBase.h"

@interface YIReqResourceDelete : YIMBase

/**
 *  当前USN
 */
@property(nonatomic,assign) int usn;
/**
 *  执行永久删除的日期
 */
@property(nonatomic,assign) int64_t expunged;

@end
