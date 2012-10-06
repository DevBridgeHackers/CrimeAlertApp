//
//  UploadViewController.m
//  CrimeAlert
//
//  Created by Karolis Stasaitis on 10/6/12.
//  Copyright (c) 2012 Karolis Stasaitis. All rights reserved.
//

#import "UploadViewController.h"
#import <MobileCoreServices/MobileCoreServices.h>

@interface UploadViewController ()

@end

@implementation UploadViewController

@synthesize shareSwitch = _shareSwitch;
@synthesize publicSwitch = _publicSwitch;
@synthesize progressBar = _progressBar;
@synthesize commentsView = _commentsView;
@synthesize selectedMedia = _selectedMedia;
@synthesize handler = _handler;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    assert(self.selectedMedia);
    NSString *mediaType = [self.selectedMedia objectForKey:UIImagePickerControllerMediaType];
    self.handler = [[MWHTTPRequest alloc] init];
    self.handler.delegate = self;
    if (mediaType == (NSString *)kUTTypeImage)
    {
        UIImage *image = [self.selectedMedia objectForKey:UIImagePickerControllerOriginalImage];
        [self.handler startSendingImage:image token:@"TEST"];
    }
    else if (mediaType == (NSString *)kUTTypeMovie)
    {
        NSURL *movieURL = [self.selectedMedia objectForKey:UIImagePickerControllerMediaURL];
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.progressBar.progress = 0;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setPublicSwitch:nil];
    [self setPublicSwitch:nil];
    [self setProgressBar:nil];
    [self setCommentsView:nil];
    [super viewDidUnload];
}

- (void)requestHandler:(MWHTTPRequest *)handler bytesWereSentWithTotalProgress:(float)percent
{
    self.progressBar.progress = percent;
}

-(void)requestHandler:(MWHTTPRequest *)handler sendingStopedWithResult:(NSInteger)status
{
#warning inclomplete
}



@end
