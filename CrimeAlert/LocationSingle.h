//
//  LocationSingle.h
//  CrimeAlert
//
//  Created by Rasa Gentvilaite on 10/7/12.
//  Copyright (c) 2012 Karolis Stasaitis. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreLocation/CoreLocation.h>

@interface LocationSingle : NSObject <CLLocationManagerDelegate, UIAlertViewDelegate>
@property (strong,nonatomic) CLLocationManager *locationManager;
@property (strong,nonatomic) CLLocation *location;

+ (LocationSingle *)sharedInstance;

@end
