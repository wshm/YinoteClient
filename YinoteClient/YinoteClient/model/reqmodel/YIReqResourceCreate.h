//
//  YIReqResourceCreate.h
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMBase.h"

@interface YIReqResourceCreate : YIMBase

@property(nonatomic,strong) NSString *id_;
/**
 *  笔记本ID
 */
@property(nonatomic,strong) NSString *noteId;
@property(nonatomic,strong) NSString *mime;
/**
 *  天翼云的资源ID必须大于0
 */
@property(nonatomic,assign) int64_t cloud189Id;
/**
 *  天翼云的资源的版本号
 */
@property(nonatomic,assign) int64_t cloud189Version;
@property(nonatomic,assign) long size;
@property(nonatomic,assign) int width;
@property(nonatomic,assign) int height;
@property(nonatomic,strong) NSString * fileExtension;

@end
