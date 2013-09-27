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
    IBOutlet UILabel *saveEventSwipe;
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UITextField *eventName;
    IBOutlet UIDatePicker *eventDate;
    NSString *dateFinal;
    NSString *nameOfFullEvent;
    
    UISwipeGestureRecognizer *rightSwipe;
    UISwipeGestureRecognizer *leftSwipe;
}

@property (nonatomic, retain)IBOutlet UIDatePicker *eventDate;

-(void)onSwipeSave:(UISwipeGestureRecognizer*)recognizer;
-(IBAction)onClose:(id)sender;
-(void)keyboredWillShow:(NSNotification*)notification;
-(void)keyboredWillHide:(NSNotification*)notification;

@end
