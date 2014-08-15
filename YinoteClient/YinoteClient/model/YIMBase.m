//
//  YIMBase.m
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMBase.h"

@implementation YIMBase

- (BOOL)isKeyExistInJson:(id)jsonData key:(NSString*)key{
    if([jsonData objectForKey:key] != [NSNull null] && [jsonData objectForKey:key] != nil){
        return YES;
    }else{
        return NO;
    }
}

- (id)initWithJson:(NSDictionary *)json {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (id)genReqModel {return nil;}

@end
