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

    // KLUDGE: is this necessary?
    screenRect      = [[UIScreen mainScreen] bounds];
    screenWidth     = screenRect.size.width;
    screenHeight    = screenRect.size.height;

    // Note: UI Text has been given programmable titles b/c desktop app currently doesn't have "room code"
    //      as a field option when creating a session.
    
    _inputTitle1.text = @"ROOM CODE:";
    _inputTitle2.text = @"YOUR NAME:";
    _inputTitle3.text = @"PASSWORD:";
    
    if (_isJoiningSession) {
        _titleText.text = [NSString stringWithFormat:@"JOIN SESSION"];
    } else {
        _titleText.text = [NSString stringWithFormat:@"CREATE SESSION"];
        
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
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
        
        if (_isJoiningSession) {
            controller.roomName = _roomNameTextEntry.text;
        }
        controller.yourName = _yourNameTextEntry.text;
        controller.password = _passwordTextEntry.text;
    }
    
}


- (IBAction)goButtonPressed:(id)sender {
    
    // Check if all fields are filled out correctly before moving to canvas
    
    // Convert text input to strings
//    NSString *roomName = _roomNameTextEntry.text;
    NSString *yourName = _yourNameTextEntry.text;
    NSString *password = _passwordTextEntry.text;
    
    // TODO: validate input more
    
    
    if (![yourName isEqualToString:@""]) {
        // Perform segue if input fields are valid
        [self performSegueWithIdentifier:@"goToCanvasSegue" sender:nil];
    } else {
        // If input is not valid/complete, show an error to the user letting them know that they have messed up
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error"
                                                        message:@"You must provide your name."
                                                       delegate:nil
                                              cancelButtonTitle:@"OK"
                                              otherButtonTitles:nil];
        [alert show];
    }
    
}


@end

