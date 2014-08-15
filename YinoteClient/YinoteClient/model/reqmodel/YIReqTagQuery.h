//
//  YIReqTagQuery.h
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMBase.h"

@interface YIReqTagQuery : YIMBase
/**
 *  创建标签的对象
 */
@property(nonatomic,strong) NSString *notebookId;
/**
 *  查找类似的标签
 */
@property(nonatomic,strong) NSString *nameLike;
/**
 *  是否需要显示笔记本中的笔记数
 */
@property(nonatomic,assign) BOOL withNoteCount;
/**
 *  如果为true，则只包含有笔记的标签
 */
@property(nonatomic,assign) BOOL hasNote;
@end
