//
//  YIReqTodoUpdate.m
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqTodoUpdate.h"

@interface YIReqTodoUpdate()
@property (nonatomic,assign)BOOL titleSet;
@property (nonatomic,assign)BOOL startAtSet;
@property (nonatomic,assign)BOOL completeAtSet;
@end

@implementation YIReqTodoUpdate

- (id)genReqModel {
    NSMutableDictionary *param = [@{@"id":self.id_,@"usn":@(self.usn)} mutableCopy];
    if (self.titleSet) {
        [param setObject:self.title forKey:@"title"];
    }
    if (self.startAtSet) {
        [param setObject:@(self.startAt) forKey:@"startAt"];
    }
    if (self.completeAtSet) {
        [param setObject:@(self.completeAt) forKey:@"completeAt"];
    }
    return param;
}

- (void)setId_:(NSString *)id_ {
    _id_ = id_;
}

- (void)setTitle:(NSString *)title {
    _title = title;
    self.titleSet = YES;
}

- (void)setStartAt:(long long)startAt {
    _startAt = startAt;
    self.startAtSet = YES;
}

- (void)setCompleteAt:(long long)completeAt {
    _completeAt = completeAt;
    self.completeAtSet = YES;
}
@end
