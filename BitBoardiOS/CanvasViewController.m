//
//  UIViewController+CanvasViewController.m
//  BitBoardiOS
//
//  Created by Austin Martin on 5/17/15.
//  Copyright (c) 2015 ___CS130___. All rights reserved.
//

#import "CanvasViewController.h"

@interface CanvasViewController (){
    SocketIOClient* socket;
}
@end

@implementation CanvasViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // KLUDGE: is this necessary?
    screenRect      = [[UIScreen mainScreen] bounds];
    screenWidth     = screenRect.size.width;
    screenHeight    = screenRect.size.height;

    socket = [SharedSocketClient sharedClient];

    // TODO: add a spinning/loading UI element until join/create returns successfully
    if (_isJoiningSession) {
        [self joinSession];
    } else {
        [self createSession];
    }

    CGFloat statusBarHeight = [UIApplication sharedApplication].statusBarFrame.size.height;
    CGFloat navigationBarHeight = self.navigationController.navigationBar.frame.size.height;
    CGFloat webViewYOffset = statusBarHeight + navigationBarHeight;

    _webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, webViewYOffset, self.view.bounds.size.width, self.view.bounds.size.height - webViewYOffset)];
    _webView.delegate = self;
    // TODO: Use real URL
    NSString *fullUrl = @"http://localhost:3000/boards/1234?userid=deadb33f&mobile=true";
    NSURL *url = [NSURL URLWithString:fullUrl];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [_webView loadRequest:requestObj];
    [self.view addSubview:_webView];
    
    // Testing: show alerts for the information recieved
    //TODO: Move these tests to XCTest
    /*UIAlertView *alert1 = [[UIAlertView alloc] initWithTitle:@"Room name"
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
    [alert3 show];*/
}

- (void) joinSession {
    // TODO: create logic to call to server w/ socket to join an existing session
    
    /*UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Joining a session?"
                                                     message:@"Yes you are"
                                                    delegate:nil
                                           cancelButtonTitle:@"OK"
                                           otherButtonTitles:nil];

    [alert show];*/

    [self emitJoinBoard];
    
}

- (void) createSession {
    // TODO: create logic to call to server w/ socket to create a new session
    
    /*UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Creating a session?"
                                                    message:@"Yes you are"
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];

    [alert show];*/
    [self emitJoinBoard];
    
}

-(void) emitJoinBoard{
    [socket on:@"connect" callback:^(NSArray* data, void (^ack)(NSArray*)) {
        NSLog(@"socket connected");
        [socket emit:@"joinBoard" withItems:[NSArray arrayWithObjects:_roomName,_yourName, nil]];
        //[socket emit:@"sendChatMessage" withItems:[NSArray arrayWithObject:@"test message"]];
    }];
    
    [socket connect];
    
    // Socket connected!
    // TODO: pass messages through socket to create a new session.
    //      Room name, your name, PW.
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    // TODO: use this kind of script execution to emit events to the webpage, so that we can
    //       switch tools.
    // It will use event emission like this: https://developer.mozilla.org/en-US/docs/Web/Guide/Events/Creating_and_triggering_events
    [webView stringByEvaluatingJavaScriptFromString:@"console.log('Hello world.')"];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
