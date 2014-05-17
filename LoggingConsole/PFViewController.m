//
//  PFViewController.m
//  LoggingConsole
//
//  Created by Peter Fennema on 17/05/14.
//  Copyright (c) 2014 Peter Fennema. All rights reserved.
//

#import "PFViewController.h"

// Adding this import lets the NSLog calls log to the iPhone screen
#import "PFLoggingConsole.h"

@interface PFViewController ()

@end

@implementation PFViewController

#pragma mark - Lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSLog(@"PFViewController viewDidLoad");
}


@end
