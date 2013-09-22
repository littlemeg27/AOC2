//
//  SecondViewController.h
//  AOC2Project3
//
//  Created by Brenna Pavlinchak on 9/22/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController



-(IBAction)onSave:(id)sender;
-(IBAction)onClose:(id)sender;
-(void)keyboredWillShow:(NSNotification*)notification;
-(void)keyboredWillHide:(NSNotification*)notification;

@end
