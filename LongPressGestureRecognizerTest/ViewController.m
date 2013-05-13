//
//  ViewController.m
//  LongPressGestureRecognizerTest
//
//  Created by Daniel Tull on 13.05.2013.
//  Copyright (c) 2013 Daniel Tull. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (IBAction)longPress:(id)sender {
	NSLog(@"%@:%@", self, NSStringFromSelector(_cmd));
	self.textField.borderStyle = UITextBorderStyleLine;
}
- (IBAction)cancel:(id)sender {
	[self.textField resignFirstResponder];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
	textField.borderStyle = UITextBorderStyleRoundedRect;
}

@end
