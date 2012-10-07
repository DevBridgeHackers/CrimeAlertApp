//
//  InitialViewController.m
//  CrimeAlert
//
//  Created by Rasa Gentvilaite on 10/6/12.
//  Copyright (c) 2012 Karolis Stasaitis. All rights reserved.
//

#import "InitialViewController.h"
#import "LoginViewController.h"
#import <FacebookSDK/FacebookSDK.h>
#import "AppDelegate.h"

@interface InitialViewController ()

@end

@implementation InitialViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(fbConnected:) name:@"facebook_connected" object:nil];
    
    // See if we have a valid token for the current state.
    if (FBSession.activeSession.state == FBSessionStateCreatedTokenLoaded) {
        // To-do, show logged in view
        AppDelegate * appDelegate = [UIApplication sharedApplication].delegate;
        [appDelegate openSession];
        [self performSegueWithIdentifier:@"skipMainViewSegue" sender:self];
    } else {
        // No, display the login page.
        [self performSegueWithIdentifier:@"showLoginViewSegue" sender:self];
    }

}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Login

- (void)loginViewControllerLogging
{
    AppDelegate * appDelegate = [UIApplication sharedApplication].delegate;
    [appDelegate openSession];
}

#pragma mark - Segue

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"showLoginViewSegue"]) {
        LoginViewController *loginView = segue.destinationViewController;
        loginView.delegate = self;
    }
}

#pragma mark - fb

- (void)fbConnected:(NSNotification *)note
{
    [self.navigationController popToRootViewControllerAnimated:NO];
    [self performSegueWithIdentifier:@"skipMainViewSegue" sender:self];
}


@end
