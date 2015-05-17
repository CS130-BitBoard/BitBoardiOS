//
//  ViewController.h
//  BitBoardiOS
//
//  Created by Austin Martin on 5/17/15.
//  Copyright (c) 2015 ___CS130___. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    CGRect  screenRect;
    CGFloat screenWidth;
    CGFloat screenHeight;
}



@property (weak, nonatomic) IBOutlet UIButton *joinButton;
- (IBAction)joinButtonPressed:(id)sender;


@property (weak, nonatomic) IBOutlet UIButton *createButton;
- (IBAction)createButtonPressed:(id)sender;

@end
