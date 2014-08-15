//
//  YIMDiscussion.h
//  YinoteClient
//
//  Created by wshm on 14-8-13.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMBase.h"

@interface YIMDiscussion : YIMBase
/**
 *  id
 */
@property(nonatomic,strong) NSString *id_;
/**
 *  评论内容
 */
@property(nonatomic,strong) NSString *content;
/**
 *  创建者ID
 */
@property(nonatomic,strong) NSString *creator;
/**
 *  创建者昵称
 */
@property(nonatomic,strong) NSString *creatorNickName;
/**
 *  创建时间
 */
@property(nonatomic,assign) int64_t created;
/**
 *  更新时间
 */
@property(nonatomic,assign) int64_t updated;
/**
 *  评论的USN
 */
@property(nonatomic,assign) NSInteger usn;

@end
