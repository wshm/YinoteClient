//
//  YIMLargestResource.h
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIMBase.h"
@interface YIMLargestResource : YIMBase

@property (nonatomic,strong) NSString *mime;
@property (nonatomic,assign) int64_t size;
@property (nonatomic,strong) NSString *id_;

@end
