//
//  MWHTTPRequest.h
//  CrimeAlert
//
//  Created by Karolis Stasaitis on 10/6/12.
//  Copyright (c) 2012 Karolis Stasaitis. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol MWHTTPRequestDelegate

- (void)sendingStopedWithResult:(NSInteger)status;
- (void)bytesWereSentWithTotalProgress:(NSInteger)percent;

@end

@interface MWHTTPRequest : NSObject <NSStreamDelegate>

@property (nonatomic,assign) id<MWHTTPRequestDelegate> delegate;

@end
