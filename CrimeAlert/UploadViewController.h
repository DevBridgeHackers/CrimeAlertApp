//
//  UploadViewController.h
//  CrimeAlert
//
//  Created by Karolis Stasaitis on 10/6/12.
//  Copyright (c) 2012 Karolis Stasaitis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MWHTTPRequest.h"
#import "SSTextView.h"

@interface UploadViewController : UIViewController <MWHTTPRequestDelegate>

@property (weak, nonatomic) IBOutlet UISwitch *shareSwitch;
@property (weak, nonatomic) IBOutlet UISwitch *publicSwitch;
@property (weak, nonatomic) IBOutlet UIProgressView *progressBar;
@property (weak, nonatomic) IBOutlet SSTextView *commentsView;
@property (strong, nonatomic) NSDictionary *selectedMedia;
@property (strong, nonatomic) MWHTTPRequest *handler;
@property (weak, nonatomic) IBOutlet UIBarButtonItem *doneNavItem;
@end