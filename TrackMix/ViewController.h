//
//  ViewController.h
//  TrackMix
//
//  Created by Chris Lyon on 5/8/15.
//  Copyright (c) 2015 Chris Lyon. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@class Track;

@interface ViewController : NSViewController

@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;
@property (strong) Track *track;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;
- (IBAction)mute:(id)sender;
- (void)updateUserInterface;

@end

