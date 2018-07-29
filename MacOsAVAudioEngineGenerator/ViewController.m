//
//  ViewController.m
//  MacOsAVAudioEngineGenerator
//
//  Created by John Carlson on 7/28/18.
//  Copyright © 2018 John Carlson. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    self->audioEngine = [[AudioEngine alloc]init];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
