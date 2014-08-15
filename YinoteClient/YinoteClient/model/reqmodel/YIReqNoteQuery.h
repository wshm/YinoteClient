//
//  YIReqNoteQuery.h
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMBase.h"
typedef enum {
    YINoteQueryStatusDeleted = 0,   //未放入回收站的笔记
    YINoteQueryStatusNormal = 1,    //放入回收站的笔记
    YINoteQueryStatusExpunged = 2,  //被彻底删除的笔记
    YINoteQueryStatusAll = 3,       //所有的笔记
} YINoteQueryStatus;
@interface YIReqNoteQuery : YIMBase

/**
 *  笔记本ID
 */
@property (nonatomic,strong) NSString *notebookId;
/**
 *  知识群组ID，未提供则使用用户的私人知识库
 */
@property (nonatomic,strong) NSString *knowledgeGroup;
/**
 *  标签ID
 */
@property (nonatomic,strong) NSString *tagId;
/**
 *  是否显示标签的名字
 */
@property (nonatomic,assign) BOOL withTagName;
/**
 *  geoDefined
 */
@property (nonatomic,assign) BOOL geoDefined;
@property (nonatomic,assign) YINoteQueryStatus status;
/**
 *  笔记是否发布到公共主页
 */
@property (nonatomic,assign) BOOL published;
/**
 *  笔记加密分享的访问密码
 */
@property (nonatomic,strong) NSString *shareKey;
/**
 *  是否显示创建者和最后编辑者的昵称
 */
@property (nonatomic,assign) BOOL withNickname;
/**
 *  起始的分页，从0开始计数
 */
@property (nonatomic,assign) NSInteger startPage;
/**
 *  分页大小
 */
@property (nonatomic,assign) NSInteger page_size;
/**
 *  返回结果中是否包含公开链接
 */
@property (nonatomic,assign) BOOL withPublicLink;
/**
 *  搜索的关键词，符合正则(tag|标签)[:：]\s*(.+)，则以标签名来搜索，符合(notebook|笔记本)[:：]\s*(.+)，则以笔记本名来搜索
 */
@property (nonatomic,strong) NSString *words;
/**
 *  返回结果中是否包含笔记本名称
 */
@property (nonatomic,assign) BOOL withNotebookName;

@end
