//
//  YIApiTool.m
//  YinoteClient
//
//  Created by wshm on 14-8-7.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIApiTool.h"
#import "YIApiError.h"
#import "YIMUserInfo.h"
#import "YIMSyncState.h"
#import "YIMSyncChunk.h"
#import "YIMNoteMetadata.h"
#import "YIMVersioned.h"

@implementation YIApiTool
+ (YIApiError*)getApiErrorWithStatusCode:(NSInteger)code {
    @try {
        if (code == 200) {
            return nil;
        } else if (code == 400) {
            return [[YIApiError alloc] initWithParameters:code andMessage:NSLocalizedString(@"400请求错误!", nil)];
        } else if (code == 403) {
            return [[YIApiError alloc] initWithParameters:code andMessage:NSLocalizedString(@"403请求错误!", nil)];
        } else if (code == 500) {
            return [[YIApiError alloc] initWithParameters:code andMessage:NSLocalizedString(@"500请求错误!", nil)];
        } else if (code == 404) {
            return [[YIApiError alloc] initWithParameters:code andMessage:NSLocalizedString(@"404请求错误!", nil)];
        } else {
            return [[YIApiError alloc] initWithParameters:code andMessage:NSLocalizedString(@"未知错误!", nil)];
        }
    }
    @catch (NSException *exception) {
        return [[YIApiError alloc] initWithParameters:99998 andMessage:NSLocalizedString(@"异常错误!", nil)];
    }
    return nil;
}
+ (YIApiError *)getApiErrorWithRsp:(id)response {
    @try {
        NSError *error;
        id jsonObject;
        if ([response isKindOfClass:[NSString class]]) {
            NSData *rspData = [response dataUsingEncoding:NSUTF8StringEncoding];
            jsonObject = [NSJSONSerialization JSONObjectWithData:rspData options:NSJSONReadingMutableLeaves error:&error];
            if (error) {
                return [[YIApiError alloc] initWithParameters:error.code andMessage:error.domain];
            }
        } else {
            jsonObject = response;
        }
        if (!([jsonObject isKindOfClass:[NSDictionary class]] || [jsonObject isKindOfClass:[NSArray class]])) {
            return [[YIApiError alloc] initWithParameters:99999 andMessage:NSLocalizedString(@"未知错误!", nil)];
        }
    }
    @catch (NSException *exception) {
        return [[YIApiError alloc] initWithParameters:99998 andMessage:NSLocalizedString(@"异常错误!", nil)];
    }
    return nil;
}

static NSMutableDictionary *responseCodeDesc;
+ (NSString*)getReqDominWithCode:(NSInteger)code {
    if (!responseCodeDesc) {
        responseCodeDesc = [[NSMutableDictionary alloc] initWithDictionary:
                            @{
                              @40000:NSLocalizedString(@"缺少token参数", nil),
                              }];
    }
    return [responseCodeDesc objectForKey:@(code)];
}

+ (YIMVersioned*)getVersioned:(id)responseObject {
    @try {
        YIMVersioned *versioned = [[YIMVersioned alloc] initWithJson:responseObject];
        return versioned;
    }
    @catch (NSException *exception) {
        return nil;
    }
}

+ (YIMUserInfo*)getUserInfo:(id)responseObject {
    @try {
        YIMUserInfo *userInfo = [[YIMUserInfo alloc] initWithJson:responseObject];
        return userInfo;
    }
    @catch (NSException *exception) {
        return nil;
    }
}

+ (YIMSyncState*)getSyncState:(id)responseObject {
    @try {
        YIMSyncState *syncState = [[YIMSyncState alloc] initWithJson:responseObject];
        return syncState;
    }
    @catch (NSException *exception) {
        return nil;
    }
}

+ (YIMSyncChunk*)getSyncChunk:(id)responseObject {
    @try {
        YIMSyncChunk *syncChunk = [[YIMSyncChunk alloc] init];
        [syncChunk accumulate:responseObject];
        return syncChunk;
    }
    @catch (NSException *exception) {
        return nil;
    }
}

+ (NSMutableArray*)getNoteQuery:(id)responseObject {
    @try {
        NSArray *array = (NSArray *)responseObject;
        if (array && array.count > 0) {
            NSMutableArray *arrayNote = [[NSMutableArray alloc] init];
            for (NSDictionary *dic in array) {
                YIMNoteMetadata *note = [[YIMNoteMetadata alloc] initWithJson:dic];
                if (note != nil) {
                    [arrayNote addObject:note];
                }
            }
            return arrayNote;
        } else {
            return nil;
        }
    }
    @catch (NSException *exception) {
        return nil;
    }
}

+ (YIMNoteMetadata*)getNoteMetadata:(id)responseObject {
    @try {
        YIMNoteMetadata *note = [[YIMNoteMetadata alloc] initWithJson:responseObject];
        return note;
    }
    @catch (NSException *exception) {
        return nil;
    }
}

+ (NSNumber *)getDiscussionCount:(id)responseObject {
    @try {
        return @([[responseObject objectForKey:@"count"] integerValue]);
    }
    @catch (NSException *exception) {
        return nil;
    }
}

+ (NSMutableArray*)getDiscussionQuery:(id)responseObject {
    @try {
        NSArray *array = (NSArray *)responseObject;
        if (array && array.count > 0) {
            NSMutableArray *arrayNote = [[NSMutableArray alloc] init];
            for (NSDictionary *dic in array) {
                YIMNoteMetadata *note = [[YIMNoteMetadata alloc] initWithJson:dic];
                if (note != nil) {
                    [arrayNote addObject:note];
                }
            }
            return arrayNote;
        } else {
            return nil;
        }
    }
    @catch (NSException *exception) {
        return nil;
    }
}
@end
