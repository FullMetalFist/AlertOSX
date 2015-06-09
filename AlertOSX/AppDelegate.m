//
//  AppDelegate.m
//  AlertOSX
//
//  Created by Michael Vilabrera on 6/9/15.
//  Copyright (c) 2015 Giving Tree. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
- (IBAction)createAlertPanel:(id)sender;
- (IBAction)createAlertSheet:(id)sender;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)createAlertPanel:(id)sender {
    NSAlert *alert = [[NSAlert alloc] init];
    alert.messageText = @"Title as messageText";
    alert.informativeText = @"Message Format as informativeText";
    [alert addButtonWithTitle:@"OK"];
    [alert addButtonWithTitle:@"Alternate"];
    [alert addButtonWithTitle:@"Other"];
    [alert runModal];
}

- (IBAction)createAlertSheet:(id)sender {
    NSAlert *alert = [[NSAlert alloc] init];
    [alert setMessageText:@"Message Text"];
    // sheet attaches to the main window
    [alert beginSheetModalForWindow:self.window completionHandler:^(NSModalResponse returnCode) {
        if (returnCode == NSModalResponseStop) {
            NSLog(@"yay");
        }
        else {
            NSLog(@"boo");
        }
    }];
}
@end
