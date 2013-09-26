//
//  EventPlanner.m
//  AOC2Project4
//
//  Created by Brenna Pavlinchak on 9/26/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "EventPlanner.h"

@implementation EventPlanner

static EventPlanner *_instance = nil;

+(void)CreateInstance
{
    if(_instance == nil)
    {
        [[self alloc] init];
    }
}

+(EventPlanner*)GetInstance; //Create the instance
{
    return _instance;
}

+(id)alloc //Set instance
{
    _instance = [super alloc];
    
    return _instance;
}

-(id)init //Init the instance
{
    if(self = [super init])
    {
     //Add code that needs to be called at init
    }
    return self;
}

-(void)NSUserResults
{
    NSUserDefaults *defaultText = [NSUserDefaults standardUserDefaults];
    if(defaultText !=nil)
    {
        //Put the save text in here
    }
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer;
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionLeft) //Check for the swipe
    {
        if(eventName.text.length !=0)
        {
            NSString *textEvent = eventName.text; //Save the text into a string
            NSLog(@"The Event: %@", textEvent); //Log it out
            
            NSDate *chooseDate = [eventDate date]; //Saves the date
            
            if(closeKeyboard.tag == 0)
            {
                [eventName resignFirstResponder]; //To close keyboard
            } //end of if
            
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
            
        } //end of if check for length
        
        else//If the text field is empty display an alert saying to enter text
        {
            NSString *eventNameAlert = [NSString stringWithFormat:@"You cannot save this event without a name!"];
            [self DisplayAlertWithString:eventNameAlert customTitle:@"No Event name"];
        }
        
    } //End of button if for swipe
    
} //End of onSwipe

@end
