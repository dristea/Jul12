//
//  Jul12ViewController.h
//  Jul122
//
//  Created by Dan Ristea on 7/12/12.
//  Copyright (c) 2012 NBS. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface Jul12ViewController : UIViewController{

	IBOutlet UILabel *existanceLabel;
	IBOutlet UITextField *sideATextField;
	IBOutlet UITextField *sideBTextField;
	IBOutlet UITextField *sideCTextField;
}

-(IBAction)calculateButton_Clicked:(id)sender;
@property (nonatomic, retain) IBOutlet UILabel *existanceLabel;
@property (nonatomic, retain) IBOutlet UITextField *sideATextField;
@property (nonatomic, retain) IBOutlet UITextField *sideBTextField;
@property (nonatomic, retain) IBOutlet UITextField *sideCTextField;


@end
