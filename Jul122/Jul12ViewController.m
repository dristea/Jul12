//
//  Jul12ViewController.m
//  Jul122
//
//  Created by Dan Ristea on 7/12/12.
//  Copyright (c) 2012 NBS. All rights reserved.
//

#import "Jul12ViewController.h"

@interface Jul12ViewController ()

@end

@implementation Jul12ViewController

@synthesize existanceLabel, sideATextField, sideBTextField, sideCTextField;

-(IBAction)calculateButton_Clicked:(id)sender
{
	float sideA = [self.sideATextField.text floatValue];
	float sideB = [self.sideBTextField.text floatValue];
	float sideC = [self.sideCTextField.text floatValue];

	if ((sideA+sideB)<=sideC || (sideB+sideC)<=sideA || (sideA+sideC)<=sideB){
		self.existanceLabel.text=[NSString stringWithFormat:@ "NO"];
	}else{
		self.existanceLabel.text=[NSString stringWithFormat:@ "YES"];
		}
		[sideATextField resignFirstResponder];
		[sideBTextField resignFirstResponder];
		[sideCTextField resignFirstResponder];
}

- (IBAction)backgroundTouch:(id)sender {
	[sideATextField resignFirstResponder];
	[sideBTextField resignFirstResponder];
	[sideCTextField resignFirstResponder];
}



- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
	if([textField.text isEqualToString: @""]){
		textField.placeholder=@"type a #";
	}else{
		bool illegalCharFlag;
		NSCharacterSet *myCharSet = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
		for (int i = 0; i < [textField.text length]; i++) {
			unichar c = [textField.text characterAtIndex:i];
			if ([myCharSet characterIsMember:c]) {illegalCharFlag=false;}else{illegalCharFlag=true;}
		}
		if (illegalCharFlag==TRUE){[textField setText:[NSString stringWithFormat : @""]];}
		return [textField resignFirstResponder];
		}
	return YES;
}


- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
	return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
