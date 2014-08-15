//
//  YIAppDelegate.m
//  YinoteClientDemo
//
//  Created by wshm on 14-8-6.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import "YIAppDelegate.h"
#import "YIUserInfoClient.h"
#import "YIMUserInfo.h"
#import "YISyncClient.h"
#import "YinotesClient.h"
#import "YIReqNoteQuery.h"
#import "YINotebooksClient.h"
#import "YIReqNotebookCreate.h"
#import "YIReqNotebookUpdate.h"
#import "YIReqNotebookDelete.h"

@implementation YIAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    NSString *token = @"633e7a8c2019404f894d7f8e60dd4134";
    NSLog(@"________________textExample start__________________");
    //获取用户信息
    [YIUserInfoClient getUserInfoWithToken:token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        NSLog(@"+++++++++++%@",datas);
    }];
    //更新用户信息
    YIMUserInfo *userInfo = [[YIMUserInfo alloc] init];
    [userInfo setNickname:@"td705"];
    [userInfo setSignature:@"td705hojo"];
    [YIUserInfoClient updateUserInfo:userInfo accessToken:token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        NSLog(@"+++++++++++%@",datas);
    }];
    //获取同步状态
    [YISyncClient getSyncStateWithToken:token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        NSLog(@"+++++++++++%@",datas);
    }];
    //获取同步数据块

    [YISyncClient getSyncChunkWithAfterUsn:0 maxEntries:10 accessToken:token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        NSLog(@"+++++++++++%@",datas);
    }];

    //查询笔记
    [YINotesClient queryNoteWithModel:nil accessToken:token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        NSLog(@"+++++++++++%@",datas);
    }];
    //
    NSString *noteId = @"58c632a28d3648f1b7c582ad";
    //笔记评论数
    [YINotesClient getNoteDiscussionCountWithNoteId:noteId accessToken:token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        NSLog(@"+++++++++++%@",datas);
    }];
    //单条笔记查询，查询结果不包含content，内容显示在htmlcontent中
    [YINotesClient getNoteContentWithNoteId:noteId Token:token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        NSLog(@"+++++++++++%@",datas);
    }];
    //最近5条
    [YINotesClient getLatest5notesWithToken:token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        NSLog(@"+++++++++++%@",datas);
    }];
    //添加评论
    YIReqDiscussionCreate *create = [[YIReqDiscussionCreate alloc] init];
    create.content = @"content add test!!";
    [YINotesClient addNoteDiscussionWithModel:create noteId:noteId accessToken:token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        NSLog(@"+++++++++++%@",datas);
    }];
    //
    [YINotebooksClient queryNotebookWithModel:nil accessToken:token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
        NSLog(@"+++++++++++%@",datas);
//        {
//            id = 53a1aa934ee6232d00000000;
//            knowledgeGroup = 529532b684aea5608713ca95;
//            name = "\U98ce\U9761\U4e00\U65f6";
//            serviceCreated = 1403105528030;
//            serviceUpdated = 1403105528030;
//            usn = 321;
//        }
    }];
    YIReqNotebookCreate *createbok = [[YIReqNotebookCreate alloc] init];
    createbok.id_ = @"53a1aa934ee6232d00000001";
    createbok.name = @"api book";
//    [YINotebooksClient createNotebookWithModel:createbok accessToken:token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
//       NSLog(@"+++++++++++%@",datas);
//    }];
    YIReqNotebookUpdate *updatebok = [[YIReqNotebookUpdate alloc] init];
    updatebok.name = @"api book 1";
    updatebok.usn = 378;
//    [YINotebooksClient updateNotebookWithModel:updatebok notebookId:createbok.id_ accessToken:token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
//        NSLog(@"+++++++++++%@",datas);
//    }];
    YIReqNotebookDelete *deletebok = [[YIReqNotebookDelete alloc] init];
    deletebok.usn = 382;
    deletebok.expunged = [[NSDate date] timeIntervalSince1970] * 1000;
//    [YINotebooksClient deleteNotebookWithModel:deletebok notebookId:createbok.id_ accessToken:token rspBlock:^(id datas, NSError *error, YIApiError *apiError) {
//        NSLog(@"+++++++++++%@",datas);
//        //384 usn
//    }];
    NSLog(@"________________textExample end____________________");
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
