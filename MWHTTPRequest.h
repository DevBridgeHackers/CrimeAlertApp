//
//  MWHTTPRequest.h
//  CrimeAlert
//
//  Created by Karolis Stasaitis on 10/6/12.
//  Copyright (c) 2012 Karolis Stasaitis. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MWHTTPRequest;

@protocol MWHTTPRequestDelegate

- (void)requestHandler:(MWHTTPRequest *)handler sendingStopedWithResult:(NSInteger)status;
- (void)requestHandler:(MWHTTPRequest *)handler bytesWereSentWithTotalProgress:(float)percent;

@end

@interface MWHTTPRequest : NSObject <NSStreamDelegate, NSURLConnectionDataDelegate>

@property (nonatomic,assign) id<MWHTTPRequestDelegate> delegate;

- (void)startSendingImage:(UIImage *)image token:(NSString *)token;
- (void)stopSendWithStatus:(NSString *)statusString;
@end