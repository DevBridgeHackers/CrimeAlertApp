//
//  LoginViewController.m
//  CrimeAlert
//
//  Created by Rasa Gentvilaite on 10/6/12.
//  Copyright (c) 2012 Karolis Stasaitis. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)doLogin:(id)sender {
    [self performSegueWithIdentifier:@"showMainViewSegue" sender:self];
}

@end
