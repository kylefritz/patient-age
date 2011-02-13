//
//  TypeMonthController.h
//  patientAgeTabBar
//
//  Created by Kyle Fritz on 2/12/11.
//  Copyright 2011 simplicitysignals.com. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface TypeMonthController : UIViewController {
	IBOutlet UILabel *lblPatientAge;
	IBOutlet UITextField *txtBirthYear;
}
- (IBAction) updateAge: (id) sender;
- (IBAction) dismissKeyboard: (id) sender;
@end
