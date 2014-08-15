//
//  YIMKnowledgeGroupResult.h
//  YinoteClient
//
//  Created by wshm on 14-8-8.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMBase.h"
/**
 *  群组查询返回数据模型
 */
@interface YIMKnowledgeGroupResult : YIMBase

@property (nonatomic,retain) NSString *id_;
@property (nonatomic,retain) NSString *creator;//创建者
@property (nonatomic,retain) NSString *creatorNickname;//创建者昵称
@property (nonatomic,retain) NSString *name;
@property (nonatomic,retain) NSMutableArray *members;
@property (nonatomic,assign) int version;

@end
