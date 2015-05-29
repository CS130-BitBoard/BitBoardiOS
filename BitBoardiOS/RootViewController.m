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
