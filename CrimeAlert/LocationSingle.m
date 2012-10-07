//
//  LocationSingle.m
//  CrimeAlert
//
//  Created by Rasa Gentvilaite on 10/7/12.
//  Copyright (c) 2012 Karolis Stasaitis. All rights reserved.
//

#import "LocationSingle.h"

@implementation LocationSingle


+ (LocationSingle *)sharedInstance
{
    static LocationSingle *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[LocationSingle alloc] init];
        sharedInstance.locationManager = [[CLLocationManager alloc] init];
        sharedInstance.locationManager.desiredAccuracy = kCLLocationAccuracyBest;
        sharedInstance.locationManager.delegate = sharedInstance;
        // Do any other initialisation stuff here
    });
    return sharedInstance;
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"didFailWithError:");
    //user denied access to location
    if (error.code == kCLErrorDenied) {
        UIAlertView *locationDeniedAlert = [[UIAlertView alloc] initWithTitle:@"Location Denied!" message:@"You must allow app to use your location!" delegate:self cancelButtonTitle:@"Settings" otherButtonTitles:nil];
        locationDeniedAlert.delegate = self;
        locationDeniedAlert.tag = 10;
        [locationDeniedAlert show];
    }
}

- (void)locationManager:(CLLocationManager *)manager
	didUpdateToLocation:(CLLocation *)newLocation
		   fromLocation:(CLLocation *)oldLocation
{
    self.location = newLocation;
    [self.locationManager stopUpdatingLocation];
    NSLog(@"didUpdateToLocation:");
}

#pragma mark - Alert

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    //    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs:root=General&path=Privacy"]];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs:root=General"]];
}


@end
