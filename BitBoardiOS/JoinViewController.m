//
//  JoinViewController.m
//  BitBoardiOS
//
//  Created by Austin Martin on 5/17/15.
//  Copyright (c) 2015 ___CS130___. All rights reserved.
//


#import "JoinViewController.h"

@interface JoinViewController ()


@end

@implementation JoinViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    screenRect      = [[UIScreen mainScreen] bounds];
    screenWidth     = screenRect.size.width;
    screenHeight    = screenRect.size.height;
    
    if (_isJoiningSession) {
        _titleText.text = [NSString stringWithFormat:@"Join Session"];
    } else {
        _titleText.text = [NSString stringWithFormat:@"Create Session"];
        
    }
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"goToCanvasSegue"]){
        CanvasViewController *controller = (CanvasViewController *)segue.destinationViewController;
        
        // Pass setup information for the room here (room name, user, PW).
        controller.isJoiningSession = _isJoiningSession;
        controller.roomName = _roomNameTextEntry.text;
        controller.yourName = _yourNameTextEntry.text;
        controller.password = _passwordTextEntry.text;
    }
    
}


- (IBAction)goButtonPressed:(id)sender {
    
    // TODO: check if all fields are filled out correctly before moving to canvas
    
    // Convert text input to strings
    NSString *roomName = _roomNameTextEntry.text;
    NSString *yourName = _yourNameTextEntry.text;
    NSString *password = _passwordTextEntry.text;
    
    if (![roomName isEqualToString:@""]) {
        [self performSegueWithIdentifier:@"goToCanvasSegue" sender:nil];
    } else {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"You must provide a room name."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    
}


@end

