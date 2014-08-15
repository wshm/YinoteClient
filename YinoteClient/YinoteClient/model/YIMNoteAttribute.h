//
//  YIMNoteAttribute.h
//  YinoteClient
//
//  Created by wshm on 14-8-5.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YIMBase.h"

@interface YIMNoteAttribute : YIMBase
/**
 *  纬度
 */
@property(nonatomic,assign) long altitude;
/**
 *  作者
 */
@property(nonatomic,retain) NSString *author;

/**
 *  当笔记不是通过认证客户端创建时，代表笔记创建的方法
 */
@property(nonatomic,retain) NSString *source;

/**
 *  资源的原始地址。例如通过web clips创建笔记时，代表原始网页地址
 */
@property(nonatomic,retain) NSString *sourceURL;

/**
 *  创建笔记的应用
 */
@property(nonatomic,retain) NSString *sourceApplication;

/**
 *  笔记类型。该值用来提示客户端笔记的特殊结构信息，如修改该笔记时应该遵守的特殊规范。如果该值被设定，而客户端还未支持该类型，则客户端必须将该笔记设为只读。在这种情况下对笔记进行标签与笔记本操作仍是允许的。contentClass必须符合CompanyName.ApplicationName的命名规范，以避免名称冲突。
 */
@property(nonatomic,retain) NSString *contentClass;

/**
 *  最后修改笔记的用户。当笔记被分享时有意义
 */
@property(nonatomic,retain) NSString *lastEditedBy;

/**
 *  允许用户设置一个人可读的位置名称，例如“家”、“公司”等。地点名也可以被地理名称数据库自动填充（如景点名称）。授权应用不应该自动填充或修改该值而不通过用户认可
 */
@property(nonatomic,retain) NSString *placeName;

/**
 *  海拔
 */
@property(nonatomic,assign) double latitude;

/**
 *  经度
 */
@property(nonatomic,assign) double longitude;

/**
 *  笔记直接通过自生URL方式分享的时间。对于客户端来说是只读的属性。
 */
@property(nonatomic,assign) long shareDate;

/**
 *  用于存放应用相关数据，Map类型,数据大小在(4kb)以内。该数据可能是用户不可见的，而且服务端也不会对该数据进行处理
 */
@property(nonatomic,retain) NSDictionary *applicationData;

/**
 *  记的分类信息。Map类型，键代表分类，且以CLASSIFICATION_开始
 */
@property(nonatomic,retain) NSDictionary *classifications;


- (NSMutableDictionary*)toJson;
@end
