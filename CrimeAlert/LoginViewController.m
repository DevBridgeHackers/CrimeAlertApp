//
//  LoginViewController.m
//  CrimeAlert
//
//  Created by Rasa Gentvilaite on 10/6/12.
//  Copyright (c) 2012 Karolis Stasaitis. All rights reserved.
//

#import "LoginViewController.h"
#import <CoreLocation/CoreLocation.h>
#import "LocationSingle.h"

@interface LoginViewController () <UIAlertViewDelegate>//, CLLocationManagerDelegate>
//@property (nonatomic, strong) CLLocationManager *manager;
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
    [self.navigationItem setHidesBackButton:YES animated:NO];
    
//    if (![CLLocationManager locationServicesEnabled]) {
//        UIAlertView *servicesDisabledAlert = [[UIAlertView alloc] initWithTitle:@"Location Services Disabled" message:@"You currently have all location services for this device disabled. Please enable them for app to work correctly!" delegate:nil cancelButtonTitle:@"Quit" otherButtonTitles:nil];
//        servicesDisabledAlert.delegate = self;
//        [servicesDisabledAlert show];
//    }
//    else
//    {
//        [[LocationSingle sharedInstance].locationManager startUpdatingLocation];
//    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)doLogin:(id)sender {
//    [self performSegueWithIdentifier:@"showMainViewSegue" sender:self];
    if ([self.delegate respondsToSelector:@selector(loginViewControllerLogging)]) {
        [self.delegate loginViewControllerLogging];
    }
}

#pragma mark - Locations

//- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
//{
//    NSLog(@"didFailWithError:");
//    //user denied access to location
//    if (error.code == kCLErrorDenied) {
//        UIAlertView *locationDeniedAlert = [[UIAlertView alloc] initWithTitle:@"Location Denied!" message:@"You must allow app to use your location!" delegate:self cancelButtonTitle:@"Settings" otherButtonTitles:nil];
//        locationDeniedAlert.delegate = self;
//        locationDeniedAlert.tag = 10;
//        [locationDeniedAlert show];
//    }
//}
//
//- (void)locationManager:(CLLocationManager *)manager
//	didUpdateToLocation:(CLLocation *)newLocation
//		   fromLocation:(CLLocation *)oldLocation
//{
//    NSLog(@"didUpdateToLocation:");
//}




@end
