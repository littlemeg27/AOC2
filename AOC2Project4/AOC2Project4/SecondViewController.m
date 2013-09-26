//
//  SecondViewController.m
//  AOC2Project4
//
//  Created by Brenna Pavlinchak on 9/25/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    /*[[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object: nil];
     
     [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object: nil];*/
    
    [super viewWillAppear:animated];
    
}

/*-(void)keyboredWillShow:(NSNotification*)notification //To make text field smaller when keyboard comes up
 {
 CGSize keyboardSize = [[[notification userInfo] objectForKey:UIKeyboardFrameBeginUserInfoKey] CGRectValue].size;
 
 CGRect newFrame = CGRectMake(0.0, 0.0, 320.0,);
 }
 
 -(void)keyboredWillHide:(NSNotification*)notification //To make text field same sixe when keyboard goes away
 {
 }*/

-(IBAction)onSave:(id)sender //Save events on the save event button
{
    NSString *textEvent = eventName.text; //Save the text into a string
    NSLog(@"The Event: %@", textEvent); //Log it out
    
    NSDate *chooseDate = [eventDate date]; //Saves the date
    
    if(saveEvent != nil) //I cant find the comment on where you said how to
    {                   //take care of these kinds of warnings.
        if(closeKeyboard.tag == 0)
        {
            [eventName resignFirstResponder]; //To close keyboard
        } //end of
        else if(saveEvent.tag == 1)
        {
            if(chooseDate != nil)
            {
                NSDateFormatter *setDate = [[NSDateFormatter alloc]init];
                if(setDate != nil)
                {
                    [setDate setDateFormat:@"MMMM dd, h:mm a"];
                }
                dateFinal = [setDate stringFromDate:chooseDate]; //Make the date into a string
                NSLog(@"Event Date is: %@", dateFinal); //Logs out the date out to check
                NSLog(@"The Event is: %@ %@", textEvent, dateFinal); //Logs full event out to check
            }
            
            
            [self dismissViewControllerAnimated:TRUE completion:nil]; //Line from the textFieldShouldReturn
        } //end of if else
        
    } //End of button if
}

- (void)viewDidLoad
{
    eventDate.minimumDate = [NSDate date];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
