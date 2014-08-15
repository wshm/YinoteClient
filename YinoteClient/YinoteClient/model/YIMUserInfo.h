//
//  YIMUserInfo.h
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//  用户信息
//

#import <Foundation/Foundation.h>
#import "YIMBase.h"
@interface YIMUserInfo : YIMBase

/**
 *  需要显示Webnote的介绍页面
 */
@property(nonatomic,assign) BOOL needWebnoteIntroduction;
/**
 *  用户ID，32位
 */
@property(nonatomic,strong) NSString *userid;
/**
 *  用户账号（当nickname空时可以用这个来显示)
 */
@property(nonatomic,strong) NSString *providerAccountId;
/**
 *  个性签名
 */
@property(nonatomic,strong) NSString *signature;
/**
 *  昵称
 */
@property(nonatomic,strong) NSString *nickname;
/**
 *  私人知识库ID
 */
@property(nonatomic,strong) NSString *personalKnowledgeGroup;
/**
 *  公共笔记地址
 */
@property(nonatomic,strong) NSString *site;
@end
