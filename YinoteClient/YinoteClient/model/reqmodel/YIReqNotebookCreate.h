//
//  YIReqNotebookCreate.h
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMBase.h"

@interface YIReqNotebookCreate : YIMBase
/**
 *  可选。如果未提供服务端会自动生成并返回。如果提供则服务端使用该ID
 */
@property(nonatomic,strong) NSString *id_;
/**
 *  必填。名称
 */
@property(nonatomic,strong) NSString *name;
/**
 *  可选。父级目录ID，如果不提供则创建顶级目录
 */
@property(nonatomic,strong) NSString *parent;
/**
 *  可选。群组ID，如果不提供则加入到私人群组中
 */
@property(nonatomic,strong) NSString *knowledgeGroup;

@end
