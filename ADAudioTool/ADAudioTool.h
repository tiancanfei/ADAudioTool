//
//  ADAudioTool.h
//  SystemSoundsPlay
//
//  Created by andehang on 2017/2/9.
//  Copyright © 2017年 andehang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ADAudioTool : NSObject

/**
 播放音效
 urlString：音效路径
 soundIDName：音效缓存key
 */
+ (void)playAudioWithUrl:(NSString *)urlString soundIDName:(NSString *)soundIDName;

/**
 播放bound中的音效
 name：音效名称
 */
+ (void)playMainBoundAudioWithName:(NSString *)name;

/**
 播放沙盒document中的音效
 name：音效名称
 */
+ (void)playDocumnetAudioWithName:(NSString *)name;

/**
 播放系统声音
 soundID:声音id
 系统声音id:http://iphonedevwiki.net/index.php/AudioServices
 */
+ (void)playSystemAudioWithSoundID:(UInt32)soundID;

@end
