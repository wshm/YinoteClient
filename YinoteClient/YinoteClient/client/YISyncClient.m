//
//  YISyncClient.m
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YISyncClient.h"
#import "YIApiError.h"
#import "YIApiTool.h"
#import "YIMSyncState.h"
#import "YIMSyncChunk.h"

@implementation YISyncClient
//获取同步状态
+ (void)getSyncStateWithToken:(NSString*)access_token
                    rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/sync.json/state?access_token=%@",access_token];
    [[self class] get:urlstr parameters:nil rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        if (datas != nil) {
            YIMSyncState *syncState = [YIApiTool getSyncState:datas];
            if (block) {
                block(syncState,error,apiError);
            }
        } else {
            if (block) {
                block(datas,error,apiError);
            }
        }
    }];
}
//获取同步数据块
+ (void)getSyncChunkWithAfterUsn:(NSInteger)afterUsn
                      maxEntries:(NSInteger)maxEntries
                     accessToken:(NSString*)accessToken
                        rspBlock:(YiRspBlock)block {
    
    NSString *urlstr = [NSString stringWithFormat:@"/api/sync.json/chunk?access_token=%@",accessToken];
    NSDictionary *param = @{@"after_usn":@(afterUsn),@"max_entries":@(maxEntries)};
    [[self class] get:urlstr parameters:param rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        if (datas != nil) {
            YIMSyncChunk *syncChunk = [YIApiTool getSyncChunk:datas];
            if (block) {
                block(syncChunk,error,apiError);
            }
        } else {
            if (block) {
                block(datas,error,apiError);
            }
        }
    }];
}
@end
