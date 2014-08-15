//
//  YIApiError.h
//  YinoteClient
//
//  Created by wshm on 14-8-7.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YIApiError : NSObject

@property int errorCode;
@property (copy,nonatomic) NSString * errorMessage;

- (id)initWithParameters:(int)nerrorCode andMessage:(NSString *)nerrorMessage;
@end
