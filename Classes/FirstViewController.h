//
//  FirstViewController.h
//  patientAgeTabBar
//
//  Created by Kyle Fritz on 2/12/11.
//  Copyright 2011 simplicitysignals.com. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface FirstViewController : UIViewController {
	IBOutlet UILabel *lblPatientAge;
	IBOutlet UIDatePicker *dpBirthDate;
}
- (IBAction) updateAge: (id) sender;
@end
