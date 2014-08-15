//
//  YIReqNotebookQuery.h
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMBase.h"

typedef enum {
    YINotebookQueryStatusDelete = 0,
    YINotebookQueryStatusNormal = 1,
    YINotebookQueryStatusAll = 2,
} YINotebookQueryStatus;

@interface YIReqNotebookQuery : YIMBase

/**
 *  如果不填写，将显示所有的笔记本。normal: 未放入删除的笔记本，expunged：被彻底删除的笔记本
 */
@property (nonatomic,assign) YINotebookQueryStatus status;
/**
 *  是否需要显示笔记本中的笔记数
 */
@property (nonatomic,assign) BOOL withNoteCount;
/**
 *  只获取隶属笔记中有发布到公共主页的笔记本
 */
@property (nonatomic,assign) BOOL hasPublishedNotes;
/**
 *  可选，群组ID，如不提供仅搜索用户的私人知识库
 */
@property (nonatomic,strong) NSString *knowledgeGroup;
/**
 *  可选，父级笔记本
 */
@property (nonatomic,strong) NSString *parent;
/**
 *  返回树状结构的Json对象，默认值为false
 */
@property (nonatomic,assign) BOOL treeFormat;

@end
