//
//  PFAppDelegate.m
//  LoggingConsole
//
//  Created by Peter Fennema on 17/05/14.
//  Copyright (c) 2014 Peter Fennema. All rights reserved.
//

#import "PFAppDelegate.h"

// Adding this import lets the NSLog calls log to the iPhone screen
#import "PFLoggingConsole.h"

@implementation PFAppDelegate

/**
 Adds the logging console as a subview of the rootViewController view
 */
- (void) addLoggingConsole
{
    PFLoggingConsole *loggingConsole = [PFLoggingConsole getInstance];
    CGRect screenRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenRect.size.width;
    CGFloat screenHeight = screenRect.size.height;
    loggingConsole.frame = CGRectMake(20, 30, screenWidth - 40, screenHeight - 50);
    loggingConsole.layer.borderWidth = 1.0;
    loggingConsole.layer.borderColor = [[UIColor blackColor] CGColor];
    [self.window.rootViewController.view addSubview:loggingConsole];
}

#pragma mark - UIApplicationDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSLog(@"PFAppDelegate didFinishLaunchingWithOptions");
    [self addLoggingConsole];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    NSLog(@"PFAppDelegate applicationWillResignActive");
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    NSLog(@"PFAppDelegate applicationDidEnterBackground");
    
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    NSLog(@"PFAppDelegate applicationWillEnterForeground");
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    NSLog(@"PFAppDelegate applicationDidBecomeActive");
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    NSLog(@"PFAppDelegate applicationWillTerminate");
}

@end
