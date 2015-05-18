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
    if([segue.identifier isEqualToString:@"moveToCanvasSegue"]){
        CanvasViewController *controller = (CanvasViewController *)segue.destinationViewController;
        // TODO: Perform setup for the room here (room name, user, PW)
        
        
    }
    
}


- (IBAction)goButtonPressed:(id)sender {
    
    // TODO: check if all fields are filled out correctly before moving to canvas
    
    [self performSegueWithIdentifier:@"goToCanvasSegue" sender:nil];

    
    
}


@end


