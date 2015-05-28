//
//  ViewController.m
//  BitBoardiOS
//
//  Created by Austin Martin on 5/17/15.
//  Copyright (c) 2015 ___CS130___. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()


@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    screenRect      = [[UIScreen mainScreen] bounds];
    screenWidth     = screenRect.size.width;
    screenHeight    = screenRect.size.height;
    
    [[_joinButton layer] setBorderWidth:1.0f];
    [[_joinButton layer] setBorderColor:[UIColor blackColor].CGColor];
    [[_joinButton layer] setCornerRadius:10.0f];

    [[_createButton layer] setBorderWidth:1.0f];
    [[_createButton layer] setBorderColor:[UIColor blackColor].CGColor];
    [[_createButton layer] setCornerRadius:10.0f];


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"joinSegue"]){
        JoinViewController *controller = (JoinViewController *)segue.destinationViewController;
        controller.isJoiningSession = YES;
    } else if([segue.identifier isEqualToString:@"createSegue"]){
        JoinViewController *controller = (JoinViewController *)segue.destinationViewController;
        controller.isJoiningSession = NO;
    }

}

@end
