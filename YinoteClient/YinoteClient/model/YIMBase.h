//
//  YIMBase.h
//  YinoteClient
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YIMBase : NSObject

- (BOOL)isKeyExistInJson:(id)jsonData key:(NSString*)key;

- (id)initWithJson:(NSDictionary *)json;

- (id)genReqModel;
@end
