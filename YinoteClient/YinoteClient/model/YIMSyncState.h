//
//  YIMSyncState.h
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIMBase.h"
@interface YIMSyncState : YIMBase


@property (nonatomic,assign) int64_t currentTime;//服务端的当前时间

@property (nonatomic,assign) int64_t fullSyncBefore;//当客户端最后一次同步时间在这之前时需要完成同步，不能只进行增量同步

@property (nonatomic,assign) int updateCount;//该账户在服务端的更新总数。USN 的 high water mark 值

@property (nonatomic,strong) NSString *knowledgeGroup;//Knowledge Group ID

- (id)initWithCurrentTime:(int64_t)currentTime fullSyncBefore:(int64_t)fullSyncBefore updateCount:(int)updateCount knowledgeGroup:(NSString *)knowledgeGroup;
@end
