//
//  SharedSocketClient.m
//  BitBoardiOS
//
//  Created by Akshay Bakshi on 5/27/15.
//  Copyright (c) 2015 ___CS130___. All rights reserved.
//

#import "SharedSocketClient.h"

@implementation SharedSocketClient

+(SocketIOClient *) sharedClient{
    
    static SocketIOClient *_sharedClient = nil;
    static dispatch_once_t oncePredicate;
    dispatch_once(&oncePredicate, ^{
        _sharedClient = [[SocketIOClient alloc] initWithSocketURL:@"localhost:3000" options:nil];
    });
    
    return _sharedClient;
}
@end
