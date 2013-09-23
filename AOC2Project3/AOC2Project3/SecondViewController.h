//
//  SecondViewController.h
//  AOC2Project3
//
//  Created by Brenna Pavlinchak on 9/22/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>


@protocol EventDetail <NSObject> //Defined protocol with function

-(void)eventPost:(NSString*)finishedEvent;

@end

@interface SecondViewController : UIViewController <UITextFieldDelegate>
{
    id <EventDetail> delegate; //Call back for delegate
    IBOutlet UIButton *saveEvent;
    IBOutlet UIButton *closeKeyboard;
    IBOutlet UITextField *eventName;
    IBOutlet UILabel *event;
    IBOutlet UILabel *date;
    IBOutlet UIDatePicker *eventDate;
    NSString *dateFinal;
    NSString *nameOfFullEvent;
}

@property (strong) id <EventDetail> delegate;
@property (nonatomic, retain)IBOutlet UIDatePicker *eventDate;

-(IBAction)onSave:(id)sender;
-(IBAction)onClose:(id)sender;
-(void)keyboredWillShow:(NSNotification*)notification;
-(void)keyboredWillHide:(NSNotification*)notification;

@end
