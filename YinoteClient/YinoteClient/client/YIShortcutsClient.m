//
//  YIShortcutsClient.m
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIShortcutsClient.h"

@implementation YIShortcutsClient

//获取捷径
+ (void)getShortCutsToken:(NSString*)access_token
                 rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/shortcuts.json?access_token=%@",access_token];
    [[self class] get:urlstr parameters:nil rspBlock:block];
}

//更新捷径
+ (void)updateShortCutsWithModel:(NSDictionary*)paramModel
                     accessToken:(NSString*)access_token
                        rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/shortcuts.json?access_token=%@",access_token];
    [[self class] put:urlstr parameters:paramModel rspBlock:block];
}

//删除捷径
+ (void)deleteShortCutsWithId:(NSString*)shortCutsId
                  accessToken:(NSString*)access_token
                     rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/shortcuts.json/%@?access_token=%@",shortCutsId,access_token];
    [[self class] delete:urlstr parameters:nil rspBlock:block];
}
@end
