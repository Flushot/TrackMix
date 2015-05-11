//
//  ViewController.m
//  TrackMix
//
//  Created by Chris Lyon on 5/8/15.
//  Copyright (c) 2015 Chris Lyon. All rights reserved.
//

#import "ViewController.h"
#import "Track.h"
//@import UIKit; // UIAlertView

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    Track *aTrack = [[Track alloc] init];
    [self setTrack:aTrack];
    [self updateUserInterface];
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    NSLog(@"volume set to %1.2f", [sender floatValue]);
    [self.track setVolume:[sender floatValue]];
    [self updateUserInterface];
}

- (IBAction)mute:(id)sender {
    NSLog(@"muting");
    [[self track] setVolume:0.0];
    [self updateUserInterface];
    
//    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Muted"
//                                                    message:@"Volume has been muted"
//                                                   delegate:nil
//                                          cancelButtonTitle:@"Close"
//                                          otherButtonTitles:nil];
//    [alert show];
}

- (void)updateUserInterface {
    float volume = [self.track volume];
    [self.textField setFloatValue:volume];
    [self.slider setFloatValue:volume];
}

@end
