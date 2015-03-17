//
//  AppDelegate.m
//  TrackMix
//
//  Created by air on 15/3/15.
//  Copyright (c) 2015年 air. All rights reserved.
//

#import "AppDelegate.h"
#import "Track.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    Track *aTrack = [[Track alloc]init];
    [self setTrack:aTrack];  //also can replace with: self.track = aTrack;
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)mute:(id)sender {
    NSLog(@"received a mute:message");
}

- (IBAction)takeFloatValueForVolumeFrom:(id)sender {
    float newValue = [sender floatValue];
    [self.track setVolume:newValue];
    [self updateUserInterface];
    
//    NSString *senderName = nil;
//    if (sender == self.textField) {
//        senderName = @"textField";
//    }
//    else{
//        senderName = @"slider";
//    }
//    NSLog(@"%@ sent takeFloatValueForVolumeFrom:with value %1.2f", senderName, [sender floatValue]);
}
@end
