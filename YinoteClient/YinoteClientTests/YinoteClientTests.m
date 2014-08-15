//
//  YinoteClientTests.m
//  YinoteClientTests
//
//  Created by wshm on 14-7-25.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "YIUserInfoClient.h"

@interface YinoteClientTests : XCTestCase

@end

@implementation YinoteClientTests

- (void)setUp
{
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown
{
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample
{
    NSString *token = @"633e7a8c2019404f894d7f8e60dd4134";
    NSLog(@"________________textExample start__________________");
    [YIUserInfoClient getUserInfoWithToken:token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        NSLog(@"+++++++++++%@",datas);
    }];
    NSLog(@"________________textExample end____________________");
//    XCTFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

@end
