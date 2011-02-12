//
//  patientAgeTabBarAppDelegate.h
//  patientAgeTabBar
//
//  Created by Kyle Fritz on 2/12/11.
//  Copyright 2011 simplicitysignals.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface patientAgeTabBarAppDelegate : NSObject <UIApplicationDelegate, UITabBarControllerDelegate> {
    UIWindow *window;
    UITabBarController *tabBarController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *tabBarController;

@end
