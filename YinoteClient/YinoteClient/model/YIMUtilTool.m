//
//  YIMUtilTool.m
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIMUtilTool.h"

@implementation YIMUtilTool

+ (BOOL)isKeyExistInJson:(id)jsonData key:(NSString*)key{
    if([jsonData objectForKey:key] != [NSNull null] && [jsonData objectForKey:key] != nil){
        return YES;
    }else{
        return NO;
    }
}
@end
