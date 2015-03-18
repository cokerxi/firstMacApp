//
//  AppDelegate.h
//  TrackMix
//
//  Created by air on 15/3/15.
//  Copyright (c) 2015年 air. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class Track;

@interface AppDelegate : NSObject <NSApplicationDelegate>

@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSSlider *slider;
@property (strong) Track *track;

- (IBAction)mute:(id)sender;
- (IBAction)takeFloatValueForVolumeFrom:(id)sender;
- (void)updateUserInterface;
@end

