//
//  YinoteClient.h
//  YinoteClient
//
//  Created by wshm on 14-7-25.
//  Copyright (c) 2014年 Yi. All rights reserved.
//

#import <Foundation/Foundation.h>
@class YIUserInfoClient;

@interface YinoteClient : NSObject
@property (nonatomic,strong,readonly) YIUserInfoClient *userInfoClient;
+ (instancetype)sharedInstance;

//1.0 userinfo.json : 用户信息相关操作

/*
get /userinfo.json
获取用户信息
put /userinfo.json
更新用户信息
*/

//2.0 sync.json : 同步数据块操作

/*
get /sync.json/state
获取同步状态
get /sync.json/chunk
获取同步数据块
*/

//3.0 notes.json : 笔记

/*
get /notes.json
搜索笔记
post /notes.json
创建笔记
get /notes.json/{id}
获取笔记
put /notes.json/{id}
更新笔记
delete /notes.json/{id}
永久删除笔记
get /notes.json/{id}/content
获取笔记正文
get /notes.json/latest5notes
获取5个最近的笔记
put /notes.json/batch-publish
批量的发布笔记
put /notes.json/batch-cancel-publish
批量撤销发布笔记
put /notes.json/batch-trash
批量把笔记放入回收站
put /notes.json/restore
把放入回收站的笔记恢复
put /notes.json/batch-expunge
彻底删除笔记
delete /notes.json/trashed
清空回收站
get /notes.json/{id}/tags
获取笔记标签
post /notes.json/{id}/tags
增加笔记标签
delete /notes.json/{id}/tags/{tagId}
删除笔记标签
get /notes.json/{id}/discussions
获取笔记评论
post /notes.json/{id}/discussions
增加笔记评论
get /notes.json/{id}/discussions/count
获取评论的统计数
put /notes.json/{id}/notebook
修改所属笔记本
put /notes.json/{id}/location
修改地理位置
get /notes.json/monthly
笔记月刊
*/



//4.0 discussions.json : 评论
/*
put /discussions.json/{id}
更新评论
delete /discussions.json/{id}
永久删除评论
*/


//5.0 notebooks.json : 笔记本
/*
 

get /notebooks.json
搜索笔记本
post /notebooks.json
创建笔记本
put /notebooks.json/{id}
更新笔记本
delete /notebooks.json/{id}
永久删除笔记本
*/


//6.0 tags.json : 标签

/*
get /tags.json
搜索标签
post /tags.json
创建标签
put /tags.json/{id}
更新标签
*/



//7.0 shortcuts.json : 捷径

/*
get /shortcuts.json
获取捷径
put /shortcuts.json
更新捷径
delete /shortcuts.json/{id}
删除捷径
*/


//8.0 search.json : 搜索
/*
get /search.json
搜索
*/



//9.0 resources.json : 资源

/*
get /resources
检索资源
post /resources
创建资源
get /resources/{id}
获取资源
put /resources/{id}
更新资源
delete /resources/{id}
永久删除资源
*/


//10.0 todos.json : 待办事项

/*
get /todos.json
获取待办事项列表
post /todos.json
新增待办事项
put /todos.json/{id}
修改待办事项
*/

//11.0 cloud189.json : 天翼云的相关操作

/*
get /cloud189/signature

获取cloud189 api调用的签名
*/



//12.0 familyview.json : Family View
/*
get /familyview.json/chunk
获取Family View的同步数据
*/

//13.0 chocboards.json : Choc Boards
 /*
get /choc/boards.json
获取看板列表
post /choc/boards.json
创建看板
put /choc/boards.json/{id}
修改看板
get /choc/boards.json/{id}
获取看板完成信息
get /choc/boards.json/{id}/labels
获取标签
get /choc/boards.json/{id}/lists
获取列表列表
post /choc/boards.json/{id}/lists
增加列表
get /choc/boards.json/{id}/members
获取成员列表
post /choc/boards.json/{id}/members
增加成员
delete /choc/boards.json/{boardId}/members/{memberId}
修改看板
  */

//14.0 choclists.json : Choc Lists
 /*
put /choc/lists.json/{id}
修改列表
post /choc/lists.json/{id}/cards
增加列表
  */

//15.0 choccards.json : Choc Cards
 /*
get /choc/cards.json
获取卡片列表
get /choc/cards.json/{id}
获取卡片详细
put /choc/cards.json/{id}
修改卡片
post /choc/cards.json/{id}/labels
增加列表
delete /choc/cards.json/{id}/labels/{color}
增加列表
post /choc/cards.json/{id}/comments
增加列表
post /choc/cards.json/{id}/checklists
增加清单*/

//16.0 choccomments.json : Choc Comments
/*
put /choc/comments.json/{id}
修改备注
delete /choc/comments.json/{id}
删除备注
 */

//17.0 chocchecklists.json : Choc Checklists
 /*
put /choc/checklists.json/{id}
修改清单
delete /choc/checklists.json/{id}
删除清单
post /choc/checklists.json/{id}/items
增加条目
  */

//18.0 chocchecklistitems.json : Choc ChecklistItems
 /*
put /choc/checklistitems.json/{id}
修改清单条目
delete /choc/checklistitems.json/{id}
删除清单条目
  */

//19.0 socialshare.json : Social Share Management
 /*
get /notes.json/{noteId}/socialshare
管理笔记的社会化分享和获取URL
privateshare.json : Private Share Management
 
get /notes.json/{noteId}/privateshare
获得笔记的私有分享状态和消息
put /notes.json/{noteId}/privateshare
更改私有笔记的分享状态
  */

//20.0 settingsite.json : Setting of Site
 /*
get /settingsite.json
获得Site的设置信息
post /settingsite.json
激活Site或设置属性
delete /settingsite.json
注销并删除Site的所有设置
get /settingsite.json/linkavail/{link}
查看URL是否可用
  */

//21.0 settingprofile.json : Profile Info Setting
 /*
get /settingprofile.json
获得个人资料信息
post /settingprofile.json
创建或修改个人资料信息
  */
  
//22.0 settingwechat.json : Wechat Binding Setting
/*
get /settingwechat.json
获得微信帐号绑定信息
delete /settingwechat.json
微信帐号解除绑定
 */

//23.0 knowledgegroups.json : Knowledge Group
 /*
get /knowledgegroups.json
按照成员获取群组
post /knowledgegroups.json
创建群组
get /knowledgegroups.json/{id}
按照ID获取群组
put /knowledgegroups.json/{id}
更新群组
delete /knowledgegroups.json/{id}
永久删除群组
get /knowledgegroups.json/{groupId}/members
群组成员列表
post /knowledgegroups.json/{groupId}/members
增加群组成员
delete /knowledgegroups.json/{groupId}/members/{memberId}
从群组groupId中删除成员memberId
get /knowledgegroups.json/{groupId}/invitations
群组邀请列表，返回受邀账号列表 [12@189.cn, xxx@189.cn]
delete /knowledgegroups.json/{groupId}/invitations/{inviteeAccount}
删除受邀账户
  */

//24.0 mindmaps.json : Mind Map
/*
get /mindmaps.json
搜索思维导图
post /mindmaps.json
创建思维导图
put /mindmaps.json/{id}
更新思维导图
delete /mindmaps.json/{id}
永久删除思维导图
*/


@end
