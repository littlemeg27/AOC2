//
//  SecondViewController.h
//  AOC2Project4
//
//  Created by Brenna Pavlinchak on 9/25/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "EventPlanner.h"


@interface SecondViewController : UIViewController
{
    IBOutlet UIButton *saveEvent;
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UITextField *eventName;
    IBOutlet UILabel *event;
    IBOutlet UILabel *date;
    IBOutlet UIDatePicker *eventDate;
    NSString *dateFinal;
    NSString *nameOfFullEvent;
}

@property (nonatomic, retain)IBOutlet UIDatePicker *eventDate;

-(IBAction)onSave:(id)sender;
-(IBAction)onClose:(id)sender;
-(void)keyboredWillShow:(NSNotification*)notification;
-(void)keyboredWillHide:(NSNotification*)notification;

@end
