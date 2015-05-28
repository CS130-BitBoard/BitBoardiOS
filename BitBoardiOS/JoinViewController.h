//
//  JoinViewController.h
//  BitBoardiOS
//
//  Created by Austin Martin on 5/17/15.
//  Copyright (c) 2015 ___CS130___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "CanvasViewController.h"

@interface JoinViewController : UIViewController
{
}

@property(nonatomic) BOOL isJoiningSession;
@property (weak, nonatomic) IBOutlet UILabel *titleText;

@property (weak, nonatomic) IBOutlet UITextField *roomNameTextEntry;
@property (weak, nonatomic) IBOutlet UITextField *yourNameTextEntry;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextEntry;
@property (weak, nonatomic) IBOutlet UILabel *inputTitle1;
@property (weak, nonatomic) IBOutlet UILabel *inputTitle2;
@property (weak, nonatomic) IBOutlet UILabel *inputTitle3;

@property (weak, nonatomic) IBOutlet UIButton *goButton;
- (IBAction)goButtonPressed:(id)sender;

@end
