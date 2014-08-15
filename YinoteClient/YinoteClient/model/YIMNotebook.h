//
//  YIMNotebook.h
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIMBase.h"
@interface YIMNotebook : YIMBase

@property(nonatomic,strong) NSString *id_;
/**
 *  笔记簿的名字，可变更。但每个账户必须保证在大小写不区分的情况下不存在重名
 */
@property(nonatomic,strong) NSString *name;
/**
 *  usn
 */
@property(nonatomic,assign) int usn;
/**
 *  如果为true，意味着当用户创建笔记且没有指定笔记簿的情况下，默认使用该笔记簿，比如说通过SMTP邮件的方式创建笔记。每个账户有且仅有一个默认笔记簿。如果第二个笔记本被设定为默认，那么系统会自动的将原先的默认笔记簿改成false。如果默认笔记簿被删除（比如说'active'值被设为false)，值'defaultNotebook'将被系统设为false。如果账户下没有默认笔记簿，系统将使用最长访问的笔记簿
 */
@property(nonatomic,assign) BOOL defaultNotebook;
/**
 *  笔记簿在服务端中创建的时间。该值会在服务端设置，并且返回给客户端
 */
@property(nonatomic,assign) long long serviceCreated;
/**
 *  笔记本在服务端最近一次修改的时间。由服务端设定，返回给客户端
 */
@property(nonatomic,assign) long long serviceUpdated;
/**
 *  被删除的时间。如果返回0代表未删除,√
 */
@property(nonatomic,assign) int64_t expunged;
/**
 *  笔记本所属知识库
 */
@property(nonatomic,strong) NSString *knowledgeGroup;
/**
 *  笔记本的父级目录 optional
 */
@property(nonatomic,strong) NSString *parent;

@end
