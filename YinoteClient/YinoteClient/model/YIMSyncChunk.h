//
//  YIMSyncChunk.h
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIMBase.h"

@interface YIMSyncChunk : YIMBase
{
    int _chunkHighUSN;
    int _updateCount;
    int64_t _currentTime;
    NSMutableArray *_todos;
    NSMutableArray *_notes;
    NSMutableArray *_notebooks;
    NSMutableArray *_tags;
    NSMutableArray *_resources;
    NSMutableSet *_expungedNotes;
    NSMutableSet *_expungedNotebooks;
    NSMutableSet *_expungedTags;
    NSMutableSet *_expungedResources;
}

@property int chunkHighUSN;
@property int updateCount;
@property int64_t currentTime;

@property (nonatomic,retain) NSMutableArray * todos;
@property (nonatomic,retain) NSMutableArray * notes;
@property (nonatomic,retain) NSMutableArray * notebooks;
@property (nonatomic,retain) NSMutableArray * tags;
@property (nonatomic,retain) NSMutableArray * resources;

@property (nonatomic,retain) NSMutableSet *expungedNotes;
@property (nonatomic,retain) NSMutableSet *expungedNotebooks;
@property (nonatomic,retain) NSMutableSet *expungedTags;
@property (nonatomic,retain) NSMutableSet *expungedResources;

- (void)accumulate:(id)jsonData;
@end
