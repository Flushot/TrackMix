//
//  Track.m
//  TrackMix
//
//  Created by Chris Lyon on 5/9/15.
//  Copyright (c) 2015 Chris Lyon. All rights reserved.
//

#import "Track.h"
#import "ISSoundAdditions.h"

@implementation Track

@dynamic volume;

- (float) volume {
    return [NSSound systemVolume] * 11.0;
}

- (void) setVolume:(float)newVolume {
    [NSSound setSystemVolume:newVolume / 11.0];
}

@end
