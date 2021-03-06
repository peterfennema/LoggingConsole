//
//  PFLoggingConsole.m
//  MultipeerDemo
//
//  Created by Peter Fennema on 27/04/14.
//  Copyright (c) 2014 Peter Fennema. All rights reserved.
//

#import "PFLoggingConsole.h"

@implementation PFLoggingConsole

static PFLoggingConsole *theConsole = nil;

#pragma mark - Public

+ (PFLoggingConsole*) getInstance
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        theConsole = [[PFLoggingConsole alloc]init];
        [theConsole setEditable:NO];
        [theConsole setScrollEnabled:YES];
    });
    return theConsole;
}

+ (void)log:(NSString*) lineOfText
{
    // PFLoggingConsole is a UITextView subclass.
    // UIKit classes should be used only from an application’s main thread.
    // Since we have no idea from which thread this method is called we dispatch it to the main queue.
    // This way the logging always will work, even when called from another thread.
    dispatch_async(dispatch_get_main_queue(),^{
        if (!theConsole) {
            [PFLoggingConsole getInstance];
        }
        NSString *newText;
        // do not add a newline when the console is empty
        if (theConsole.text.length == 0) {
            newText = lineOfText;
        } else {
            newText = [NSString stringWithFormat:@"%@\n%@", theConsole.text, lineOfText];
        }
        [theConsole setText:newText];
        [theConsole scrollRangeToVisible:NSMakeRange([theConsole.text length], 0)];
    });
}

@end
