//
//  YINoteClient.m
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YINotesClient.h"
#import "YIApiError.h"
#import "YIApiTool.h"
#import "YIMVersioned.h"

@implementation YINotesClient

// 搜索笔记
+ (void)queryNoteWithModel:(YIReqNoteQuery*)queryModel
               accessToken:(NSString*)access_token
                  rspBlock:(YiRspBlock)block {
    NSDictionary *param;
    if (queryModel != nil) {
        param = [queryModel genReqModel];
    } else {
        param = nil;
    }
    
    [self queryNoteWithToken:access_token queryParam:param rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        if (datas != nil) {
            NSMutableArray *array = [YIApiTool getNoteQuery:datas];
            if (block) {
                block(array,error,apiError);
            }
        } else {
            if (block) {
                block(datas,error,apiError);
            }
        }
    }];
}

+ (void)queryNoteWithToken:(NSString*)access_token
                  queryParam:(NSDictionary*)queryParam
                    rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/notes.json?access_token=%@",access_token];
    [[self class] get:urlstr parameters:queryParam rspBlock:block];
}

// 创建笔记
+ (void)createNoteWithModel:(YIReqNoteCreate*)createModel
                accessToken:(NSString*)access_token
                   rspBlock:(YiRspBlock)block {
    [self createNoteWithToken:access_token param:[createModel genReqModel] rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        if (datas != nil) {
            YIMVersioned *versioned = [YIApiTool getVersioned:datas];
            if (block) {
                block(versioned,error,apiError);
            }
        } else {
            if (block) {
                block(datas,error,apiError);
            }
        }
    }];
}

+ (void)createNoteWithToken:(NSString*)access_token
                      param:(NSDictionary *)params
              rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/notes.json?access_token=%@",access_token];
    [[self class] post:urlstr parameters:params rspBlock:block];
}

//获取单个笔记
+ (void)getNoteWithNoteId:(NSString*)noteId
              accessToken:(NSString*)access_token
               queryParam:(NSDictionary*)queryParam
                 rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/notes.json/%@?access_token=%@",noteId,access_token];
    [[self class] get:urlstr parameters:queryParam rspBlock:block];
}

//更新笔记，这里还有查询参数，没有补上
+ (void)updateNoteWithModel:(YIReqNoteUpdate*)updateModel
                     noteId:(NSString*)noteId
                accessToken:(NSString*)access_token
                   rspBlock:(YiRspBlock)block {
    [self updateNoteWithToken:access_token noteId:noteId parameter:[updateModel genReqModel] rspBlock:block];
}
+ (void)updateNoteWithToken:(NSString*)access_token
                     noteId:(NSString*)noteId
                  parameter:(NSDictionary*)parameter
              rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/notes.json/%@?access_token=%@",noteId,access_token];
    [[self class] post:urlstr parameters:parameter rspBlock:block];
}

//永久删除笔记
+ (void)deleteNoteContentWithModel:(YIReqNoteDelete*)deleteModel
                         noteId:(NSString*)noteId
                    accessToken:(NSString*)access_token
                       rspBlock:(YiRspBlock)block {
    [self deleteNoteWithToken:access_token noteId:noteId parameter:[deleteModel genReqModel] rspBlock:block];
}
+ (void)deleteNoteWithToken:(NSString*)access_token
                     noteId:(NSString*)noteId
                  parameter:(NSDictionary*)parameter
                   rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/notes.json/%@?access_token=%@",noteId,access_token];
    [[self class] delete:urlstr parameters:parameter rspBlock:block];
}

//获取笔记正文
+ (void)getNoteContentWithNoteId:(NSString*)noteId
                           Token:(NSString*)access_token
                        rspBlock:(YiRspBlock)block {
    [self getNoteContentWithToken:access_token noteId:noteId queryParam:nil rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        if (datas != nil) {
            YIMNoteMetadata *note = [YIApiTool getNoteMetadata:datas];
            if (block) {
                block(note,error,apiError);
            }
        } else {
            if (block) {
                block(datas,error,apiError);
            }
        }
    }];
}

+ (void)getNoteContentWithToken:(NSString*)access_token
                         noteId:(NSString*)noteId
                     queryParam:(NSDictionary*)queryParam
                       rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/notes.json/%@?access_token=%@",noteId,access_token];
    [[self class] get:urlstr parameters:queryParam rspBlock:block];
}

//获取最近5条笔记
+ (void)getLatest5notesWithToken:(NSString*)access_token
                        rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/notes.json/latest5notes?access_token=%@",access_token];
    [[self class] get:urlstr parameters:nil rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        if (datas != nil) {
            NSMutableArray *array = [YIApiTool getNoteQuery:datas];
            if (block) {
                block(array,error,apiError);
            }
        } else {
            if (block) {
                block(datas,error,apiError);
            }
        }
    }];
}

//批量发布笔记
+ (void)batchPublishNoteWithToken:(NSString*)access_token
                         rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {

}

//批量撤销发布笔记
+ (void)batchCancelPublishWithBody:(NSDictionary*)paramBody
                       accessToken:(NSString*)access_token
                          rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    
}

//批量把笔记放入回收站
+ (void)batchTrashWithBody:(NSDictionary*)paramBody
               accessToken:(NSString*)access_token
                  rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    
}

//把放入回收站的笔记恢复
+ (void)restoreNoteWithBody:(NSDictionary*)paramBody
                accessToken:(NSString*)access_token
                   rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    
}

//彻底删除笔记
+ (void)batchExpungeWithBody:(NSDictionary*)paramBody
                 accessToken:(NSString*)access_token
                    rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    
}

//清空回收站
+ (void)deleteTrashedWithToken:(NSString*)access_token
                      expunged:(int64_t)expunged
                      rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    
}

//获取笔记标签
+ (void)getNoteTagWithToken:(NSString*)access_token
                     noteId:(NSString*)noteId
                   rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    
}

//增加笔记标签
+ (void)addNoteTagWithToken:(NSString*)access_token
                     noteId:(NSString*)noteId
                  paramBody:(NSString*)paramBody
                   rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    
}

//删除笔记标签
+ (void)deleteNoteTagWithToken:(NSString*)access_token
                        noteId:(NSString*)noteId
                         tagId:(NSString*)tagId
                      rspBlock:(YiRspBlock)block {
    
}

//获取笔记评论
+ (void)getNoteDiscussionWithNoteId:(NSString*)noteId
                        accessToken:(NSString*)access_token
                           rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/notes.json/%@/discussions?access_token=%@",noteId,access_token];
    [[self class] get:urlstr parameters:nil rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        if (datas != nil) {
            
            NSMutableArray *array = [YIApiTool getNoteQuery:datas];
            if (block) {
                block(array,error,apiError);
            }
        } else {
            if (block) {
                block(datas,error,apiError);
            }
        }
    }];
}

//增加笔记评论
+ (void)addNoteDiscussionWithModel:(YIReqDiscussionCreate*)createModel
                            noteId:(NSString*)noteId
                       accessToken:(NSString*)access_token
                         rspBlock:(YiRspBlock)block {
    [self addNoteDiscussionWithToken:access_token noteId:noteId paramBody:[createModel genReqModel] rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        if (datas != nil) {
            YIMVersioned *versioned = [YIApiTool getVersioned:datas];
            if (block) {
                block(versioned,error,apiError);
            }
        } else {
            if (block) {
                block(datas,error,apiError);
            }
        }
    }];
}
+ (void)addNoteDiscussionWithToken:(NSString*)access_token
                            noteId:(NSString*)noteId
                         paramBody:(NSDictionary*)paramBody
                          rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/notes.json/%@/discussions?access_token=%@",noteId,access_token];
    [[self class] post:urlstr parameters:paramBody rspBlock:block];
}

//获取评论的统计数
+ (void)getNoteDiscussionCountWithNoteId:(NSString*)noteId
                             accessToken:(NSString*)access_token
                               rspBlock:(YiRspBlock)block {
    NSString *urlstr = [NSString stringWithFormat:@"/api/notes.json/%@/discussions/count?access_token=%@",noteId,access_token];
    [[self class] get:urlstr parameters:nil rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        if (datas != nil) {
            NSNumber *count = [YIApiTool getDiscussionCount:datas];
            if (block) {
                block(count,error,apiError);
            }
        } else {
            if (block) {
                block(datas,error,apiError);
            }
        }
    }];
}

//修改所属笔记本
+ (void)setNotebookWithToken:(NSString*)access_token
                      noteId:(NSString*)noteId
                   paramBody:(NSDictionary*)paramBody
                    rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    
}

//修改地理位置
+ (void)setNoteLocationWithToken:(NSString*)access_token
                          noteId:(NSString*)noteId
                       paramBody:(NSDictionary*)paramBody
                        rspBlock:(void (^)(id datas, NSError *error,YIApiError *apiError))block {
    
}

//笔记月刊
+ (void)getNoteMonthlyWith {
    
}
@end
