//
//  AudioEngine.m
//  MacOsAVAudioEngineGenerator
//
//  Created by John Carlson on 7/28/18.
//  Copyright © 2018 John Carlson. All rights reserved.
//

#import "AudioEngine.h"

@implementation AudioEngine
    
    -(AudioEngine *) init{
        
        self = [super init];
        //
        self->engine = [[AVAudioEngine alloc] init];
        //
        self->outputNode = self->engine.outputNode;
        //
        self->componentDescription.componentFlags = 0;
        self->componentDescription.componentFlagsMask = 0;
        char mfr[4] = "CRLS";
        self->componentDescription.componentManufacturer = atoi(mfr);
        char type[4] = "augn";
        self->componentDescription.componentType = atoi(type);
        char subType[4] = "sspl";
        self->componentDescription.componentSubType = atoi(subType);
        //
        self->generator = [[AVAudioUnitGenerator alloc] initWithAudioComponentDescription: self->componentDescription];
        //
        //
        [self->engine attachNode: self->generator];
        //
        [self->engine connect: generator to: outputNode format: [self->outputNode outputFormatForBus:0]];
        //
        //
        AudioUnitAddRenderNotify((self->outputNode.audioUnit), *(self->renderCallback), (__bridge void*)self);
        //
        //
        [self->engine prepare];
        //
        //
        NSError *error;
        if(![self->engine startAndReturnError: &error])
        {
            // handle error
        }
        //
        //
        return self;
    }
    
    - (void) play{
        
    }
    
    - (void) stop{
        
    }

static OSStatus renderCallback(void *inRefCon,
                               AudioUnitRenderActionFlags  *ioActionFlags,
                               const AudioTimeStamp        *inTimeStamp,
                               UInt32                      inBusNumber,
                               UInt32                      inNumberFrames,
                               AudioBufferList             *ioData)
{
    //__unsafe_unretained SpotifyCoreAudioController *contoller = (__bridge SpotifyCoreAudioController *)inRefCon;
    OSStatus err = noErr;
    
    
    
    return err;
    
}

@end
