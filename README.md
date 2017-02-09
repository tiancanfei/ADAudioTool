# ADAudioTool
iOS的音频播放

使用方法：

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
+ (void)playSystemAudioWithBound:(UInt32)soundID;
