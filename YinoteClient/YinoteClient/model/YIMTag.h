//
//  YIMTag.h
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIMBase.h"
@interface YIMTag : YIMBase
@property (nonatomic,strong) NSString *id_;
@property (nonatomic,strong) NSString *name;
@property (nonatomic,assign) int usn;
@end
