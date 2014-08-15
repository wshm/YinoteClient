//
//  YIReqNotebookUpdate.m
//  YinoteClient
//
//  Created by wshm on 14-8-11.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIReqNotebookUpdate.h"

@interface YIReqNotebookUpdate()
@property(nonatomic,assign) BOOL nameSet;
@property(nonatomic,assign) BOOL usnSet;
@property(nonatomic,assign) BOOL parentSet;
@end

@implementation YIReqNotebookUpdate

- (id)genReqModel {
    NSMutableDictionary *param = [@{@"name":self.name,@"usn":@(self.usn)} mutableCopy];
    if (self.parentSet && self.parent) {
        [param setObject:self.parent forKey:@"parent"];
    }
    return param;
}

- (void)setParent:(NSString *)parent {
    _parent = parent;
    self.parentSet = YES;
}


@end
