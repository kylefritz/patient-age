//
//  TypeMonthController.m
//  patientAgeTabBar
//
//  Created by Kyle Fritz on 2/12/11.
//  Copyright 2011 simplicitysignals.com. All rights reserved.
//

#import "TypeMonthController.h"


@implementation TypeMonthController


/*
// The designated initializer. Override to perform setup that is required before the view is loaded.
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
	self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
	if (self) {
        // Custom initialization
    }
    return self;
}
*/

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView {
}
*/

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad {
    [super viewDidLoad];
}
*/

/*
// Override to allow orientations other than the default portrait orientation.
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}
*/

- (IBAction) updateAge: (id) sender{
	NSLog(@"date changed");
	
	NSDateFormatter *formatter = [[NSDateFormatter alloc] init];
	[formatter setDateFormat:@"YYYY"];
	NSString *yearString = [formatter stringFromDate:[NSDate date]];
	[formatter release];
	
	long nowYear = (long)[yearString intValue];
	long selYear  = (long)[txtBirthYear.text intValue];

	long diff=nowYear-selYear;
	
	NSString *dateMsg = [[NSString alloc] initWithFormat: @"%ld years",diff];
	
	lblPatientAge.text=dateMsg;
	[dateMsg release];
}

- (IBAction) dismissKeyboard: (id) sender{
	NSLog(@"dismissKeyboard");
	[txtBirthYear resignFirstResponder];
}

- (void)didReceiveMemoryWarning {
	// Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
	
	// Release any cached data, images, etc that aren't in use.
}

- (void)viewDidUnload {
	// Release any retained subviews of the main view.
	// e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

@end
