//
//  SharedSocketClient.h
//  BitBoardiOS
//
//  Created by Akshay Bakshi on 5/27/15.
//  Copyright (c) 2015 ___CS130___. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bridging-Header.h"

@interface SharedSocketClient : NSObject

+ (SocketIOClient*) sharedClient;

@end
