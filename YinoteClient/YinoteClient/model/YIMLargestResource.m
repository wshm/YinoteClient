//
//  YIMLargestResource.m
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMLargestResource.h"

@interface YIMLargestResource()
@property (nonatomic,assign) BOOL mimeSet;
@property (nonatomic,assign) BOOL sizeSet;
@property (nonatomic,assign) BOOL id_Set;
@end

@implementation YIMLargestResource

- (id)initWithJson:(NSDictionary *)json {
    self = [super init];
    if (self) {
        @try {
            if([self isKeyExistInJson:json key:@"mime"]){
                self.mime = [json objectForKey:@"mime"];
            }
            if([self isKeyExistInJson:json key:@"size"]){
                self.size = [[json objectForKey:@"size"] longLongValue];
            }
            if([self isKeyExistInJson:json key:@"id"]){
                self.id_ = [json objectForKey:@"id"];
            }
        }
        @catch (NSException *exception) {
            NSLog(@"%s,%@",__func__,exception);
            return nil;
        }
    }
    return self;
}

- (id)genReqModel {
    NSMutableDictionary *param = [@{}mutableCopy];
    if (self.sizeSet) {
        [param setObject:@(self.size) forKey:@"size"];
    }
    if (self.mimeSet && self.mime) {
        [param setObject:self.mime forKey:@"mime"];
    }
    if (self.id_Set && self.id_) {
        [param setObject:self.id_ forKey:@"id"];
    }
    if (param.count > 0) {
        return param;
    } else {
        return nil;
    }
}
@end
