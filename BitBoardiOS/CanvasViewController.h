//
//  UIViewController+CanvasViewController.h
//  BitBoardiOS
//
//  Created by Austin Martin on 5/17/15.
//  Copyright (c) 2015 ___CS130___. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Socket_IO_Client_Swift;


@interface CanvasViewController : UIViewController
{
    CGRect  screenRect;
    CGFloat screenWidth;
    CGFloat screenHeight;
}

@property(nonatomic) BOOL isJoiningSession;
@property(nonatomic) NSString *roomName;
@property(nonatomic) NSString *yourName;
@property(nonatomic) NSString *password;

@end
