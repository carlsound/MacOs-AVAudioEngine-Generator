//
//  AudioEngine.h
//  MacOsAVAudioEngineGenerator
//
//  Created by John Carlson on 7/28/18.
//  Copyright © 2018 John Carlson. All rights reserved.
//
// https://gist.github.com/fishkingsin/cea3bb44818324c84169

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <AudioToolbox/AudioToolbox.h>

@interface AudioEngine : NSObject{
    @protected AVAudioEngine *engine;
    //
    @protected AVAudioOutputNode *outputNode;
    //
    @protected AudioComponentDescription componentDescription;
    @protected AVAudioUnitGenerator *generator;
    //
    AURenderCallback *renderCallback;
    //AURenderBlock *renderBlock;
    //
    //AVAudioBuffer *buffer;
    @protected AVAudioPCMBuffer *pcmBuffer;
    @protected AVAudioChannelLayout *audioChannelLayout;
    @protected AVAudioFormat *audioFormat;
    //@protected AVAudioFrameCount *audioFrameCount;
    AVAudioTime *audioTime;
    //
    //@protected AVAudioMixerNode *mixerNode;
    //
    
}

-(AudioEngine *) init;

- (void) play;

- (void) stop;

@end
