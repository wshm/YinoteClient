//
//  YIMResourceMetadata.h
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIMBase.h"
@interface YIMResourceMetadata : YIMBase

@property(nonatomic,strong) NSString *id_;
/**
 *  包含这个资源的笔记的ID
 */
@property(nonatomic,strong) NSString *noteId;
/**
 *  资源的MIME类型，例如：‘image/gif’
 */
@property(nonatomic,strong) NSString *mime;
/**
 *  如果有值，代表该资源的显示宽度
 */
@property(nonatomic,assign) int width;
/**
 *  如果有值，代表该资源的显示高度
 */
@property(nonatomic,assign) int height;
@property(nonatomic,assign) int usn;
/**
 *  Cloud 189上资源对应的ID
 */
@property(nonatomic,assign)int64_t cloud189Id;
/**
 *  Cloud 189上资源对应的Version
 */
@property(nonatomic,assign)int64_t cloud189Version;
@property(nonatomic,strong)NSString *fileExtension;
/**
 *  尺寸
 */
@property(nonatomic,assign)int64_t size;
@property(nonatomic,strong) NSString* fileName;

@end
