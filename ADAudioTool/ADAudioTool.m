//
//  ADAudioTool.m
//  SystemSoundsPlay
//
//  Created by andehang on 2017/2/9.
//  Copyright © 2017年 andehang. All rights reserved.
//

#import "ADAudioTool.h"
#import <AVFoundation/AVFoundation.h>

/**音效id字典*/
static NSMutableDictionary *soundIDs;

@implementation ADAudioTool

+ (void)playAudioWithUrl:(NSString *)urlString soundIDName:(NSString *)soundIDName
{
    SystemSoundID soundID = 0;
    
    if (!soundIDs)
    {
        soundIDs = [NSMutableDictionary dictionary];
    }
    else
    {
        soundID = (SystemSoundID)[soundIDs[soundIDName] integerValue];
    }
    
    if (soundID == 0)
    {
        NSURL *url = [NSURL URLWithString:urlString];
        AudioServicesCreateSystemSoundID((__bridge CFURLRef _Nonnull)url, &soundID);
        soundIDs[soundIDName] = [NSString stringWithFormat:@"%zd",soundID];
    }
    AudioServicesPlaySystemSound(soundID);
}

+ (void)playSystemAudioWithSoundID:(UInt32)soundID
{
    AudioServicesPlaySystemSound(soundID);
}

+ (void)playMainBoundAudioWithName:(NSString *)name
{
    NSString *url = [NSString stringWithFormat:@"%@",[[NSBundle mainBundle] pathForResource:name ofType:nil]];
    
    [self playAudioWithUrl:url soundIDName:name];
}


+ (void)playDocumnetAudioWithName:(NSString *)name
{
    NSString *documents = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) lastObject];
    NSString *url = [documents stringByAppendingPathComponent:name];
    [self playAudioWithUrl:url soundIDName:name];
}


@end
