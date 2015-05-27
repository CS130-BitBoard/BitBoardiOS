//
//  UIViewController+CanvasViewController.m
//  BitBoardiOS
//
//  Created by Austin Martin on 5/17/15.
//  Copyright (c) 2015 ___CS130___. All rights reserved.
//

#import "CanvasViewController.h"

@interface CanvasViewController ()

@end

@implementation CanvasViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    screenRect      = [[UIScreen mainScreen] bounds];
    screenWidth     = screenRect.size.width;
    screenHeight    = screenRect.size.height;
    
    // Hide the navigation bar
    [self.navigationController setNavigationBarHidden:YES];
    
    // TODO: add a spinning/loading UI element until join/create returns successfully
    if (_isJoiningSession) {
        [self joinSession];
    } else {
        [self createSession];
    }
    
    // Testing: show alerts for the information recieved
    UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Room name"
                                                    message:_roomName
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert1 show];
    
    UIAlertView *alert2 = [[UIAlertView alloc] initWithTitle:@"Your name"
                                                    message:_yourName
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert2 show];
    
    UIAlertView *alert3 = [[UIAlertView alloc] initWithTitle:@"Password"
                                                    message:_password
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert3 show];
}

- (void) joinSession {
    // TODO: create logic to call to server w/ socket to join an existing session
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Joining a session?"
                                                     message:@"Yes you are"
                                                    delegate:nil
                                           cancelButtonTitle:@"OK"
                                           otherButtonTitles:nil];
    [alert show];
    
    
    
}

- (void) createSession {
    // TODO: create logic to call to server w/ socket to create a new session
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Creating a session?"
                                                    message:@"Yes you are"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
