//
//  YIApiError.m
//  YinoteClient
//
//  Created by wshm on 14-8-7.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIApiError.h"

@implementation YIApiError

@synthesize errorCode;
@synthesize errorMessage;

- (id)initWithParameters:(int)nerrorCode andMessage:(NSString *)nerrorMessage
{
    YIApiError *error = [[YIApiError alloc] init];
    error.errorCode = nerrorCode;
    error.errorMessage = nerrorMessage;
    return error;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"<errorCode: %d errorMessage: %@>",self.errorCode,self.errorMessage];
}
@end
