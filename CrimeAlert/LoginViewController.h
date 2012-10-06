//
//  LoginViewController.h
//  CrimeAlert
//
//  Created by Rasa Gentvilaite on 10/6/12.
//  Copyright (c) 2012 Karolis Stasaitis. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol LoginViewControllerDelegate <NSObject>

- (void)loginViewControllerLogging;

@end

@interface LoginViewController : UIViewController

@property (nonatomic, weak) id delegate;

@end
