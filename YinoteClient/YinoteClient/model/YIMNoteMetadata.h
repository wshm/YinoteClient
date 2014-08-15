//
//  YIMNoteMetadata.h
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIMBase.h"
@class YIMNoteAttribute;
@class YIMLargestResource;
@interface YIMNoteMetadata : YIMBase

/**
 *  id
 */
@property(nonatomic,strong) NSString *id_;
/*
 * 笔记的标题。前后不能包含空格
 */
@property(nonatomic,strong) NSString *title;
/*
 * 正文摘要
 */
@property(nonatomic,strong) NSString *summary;
/**
 *  正文
 */
@property(nonatomic,strong) NSString *content;
/**
 *  正文hash
 */
@property(nonatomic,strong) NSString *contentHash;
/**
 *  正文长度，该值由服务端设置
 */
@property(nonatomic,assign) int contentLength;
/**
 *  笔记被创建时客户端的时间。在多数情况下，该值与用户创建的实际时间匹配，且用来对笔记进行排序。但由于客户端可能存在时钟错误的问题，所以该值并不总是正确的。所以有时候排序也会有误差。
 */
@property(nonatomic,assign) int64_t created;
/**
 *  笔记被修改的时间。与created一样属于客户端时间，存在误差
 */
@property(nonatomic,assign) int64_t updated;
/**
 *  笔记被 '删除' (至回收站) 的时间。与created一样属于客户端时间，存在误差。
 */
@property(nonatomic,assign) int64_t deleted;
/**
 *  当笔记可以进行的正常的操作与浏览时，该值设为true,
 */
@property(nonatomic,assign) BOOL active;
/**
 *  usn
 */
@property(nonatomic,assign) int usn;
/**
 *  所属笔记本ID
 */
@property(nonatomic,strong) NSString *notebookId;
/**
 *  该笔记所包含的标签ID,
 */
@property(nonatomic,strong) NSArray *tagIds;
/**
 *  笔记属性
 */
@property(nonatomic,strong) YIMNoteAttribute *attributes;
/**
 *  YIMLargestResource
 */
@property(nonatomic,strong) YIMLargestResource *largestResource;

/**
 *  笔记所属知识库
 */
@property(nonatomic,strong) NSString *knowledgeGroup;
/**
 *  笔记是否发布到公共主页
 */
@property(nonatomic,assign) BOOL published;

//option
@property(nonatomic,strong) NSString *notebookName;
@property(nonatomic,strong) NSArray *tagNames;
/**
 *  当查询参数中配置了 with_html_content 则包含该字段
 */
@property(nonatomic,strong) NSString *htmlContent;
@property(nonatomic,strong) NSString *latestEditor;
@property(nonatomic,strong) NSString *creator;
@end
