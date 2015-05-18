//
//  JoinViewController.h
//  BitBoardiOS
//
//  Created by Austin Martin on 5/17/15.
//  Copyright (c) 2015 ___CS130___. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CanvasViewController.h"

@interface JoinViewController : UIViewController
{
    CGRect  screenRect;
    CGFloat screenWidth;
    CGFloat screenHeight;
}

@property(nonatomic) BOOL isJoiningSession;
@property (weak, nonatomic) IBOutlet UILabel *titleText;

@property (weak, nonatomic) IBOutlet UITextField *roomNameTextEntry;
@property (weak, nonatomic) IBOutlet UITextField *yourNameTextEntry;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextEntry;

- (IBAction)goButtonPressed:(id)sender;

@end
