//
//  PFLoggingConsole.h
//  MultipeerDemo
//
//  Created by Peter Fennema on 27/04/14.
//  Copyright (c) 2014 Peter Fennema. All rights reserved.
//

#define NSLog( s, ... ) [PFLoggingConsole log:[NSString stringWithFormat:@"> %@",[NSString stringWithFormat:(s), ##__VA_ARGS__]]]

/**
 A singleton UITextView subclass that can be used as a logging console.
 By importing this file into another class file all NSLog calls of that class will log to this logging console.
 You typically add this logging console as a subview of the root viewcontroller view of your app, when debugging.
 */
@interface PFLoggingConsole : UITextView

/**
 @return the singleton. If it was not yet created, it will be.
 */
+ (PFLoggingConsole*) getInstance;

/**
 Logs a line of text to the console. 
 */
+ (void)log:(NSString*) lineOfText;

@end
