//
//  YIReqNotebookUpdate.h
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMBase.h"

@interface YIReqNotebookUpdate : YIMBase
/**
 *  名称
 */
@property(nonatomic,retain) NSString *name;
/**
 *  usn
 */
@property(nonatomic,assign) int usn;
/**
 *  可选。父级目录ID
 */
@property(nonatomic,strong) NSString *parent;
@end
