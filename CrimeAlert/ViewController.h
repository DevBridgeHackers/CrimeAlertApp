//
//  ViewController.h
//  CrimeAlert
//
//  Created by Karolis Stasaitis on 10/6/12.
//  Copyright (c) 2012 Karolis Stasaitis. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SSTextView.h"
@interface ViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIBarButtonItem *settingsNavBarItem;
@end
