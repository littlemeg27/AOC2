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
@synthesize eventDate;

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
    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipeSave:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    [saveEventSwipe addGestureRecognizer:leftSwipe];
    
    [super viewWillAppear:animated];
}

-(void)onSwipeSave:(UISwipeGestureRecognizer*)recognizer;
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionLeft) //Check for the swipe
    {
        if(eventName.text.length !=0)
        {
            // Right here, make sure you get the name of the event and the date, and format it how it needs to
            // be displayed. It should be put in the newEvent variable
            [[EventPlanner GetInstance] addEvent:newEvent]; //Call the singleton

            
            [self dismissViewControllerAnimated:TRUE completion:nil]; //Line from the textFieldShouldReturn
            
        } //end of if check for length
        
        else //If the text field is empty display an alert saying to enter text
        {
            NSString *eventNameAlert = [NSString stringWithFormat:@"You cannot save this event without a name!"];
            
            UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:eventNameAlert delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            
            if (alert != nil) {
                [alert show];
            }
            //[self displayAlertWithString:eventNameAlert];
        }
    } //End of button if for swipe
    
} //End of onSwipe


- (void)viewDidLoad
{
    eventDate.minimumDate = [NSDate date];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClick:(id)sender {
    [eventName resignFirstResponder];
}


@end