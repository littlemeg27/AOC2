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
        if(!eventList)
        {
            eventList = [[NSMutableString alloc] init];
        }
    }
    return self;
}

-(void)stringCall
{
    //NSDateFormatter *eventDate = [[NSDateFormatter alloc] init];
    
    /*NSMutableString *string = [[NSMutableString alloc] initWithString:stringOne];
    NSString *bothStrings = [string stringByAppendingString:stringTwo];
    return bothStrings;*/
}

-(void)addEvent
{
        NSString *textEvent = eventName.text; //Save the text into a string
        NSLog(@"The Event: %@", textEvent); //Log it out
        
        NSDate *chooseDate = [eventDate date]; //Saves the date
        
        if(chooseDate != nil)
        {
            NSDateFormatter *setDate = [[NSDateFormatter alloc]init];
            
            if(setDate != nil)
            {
                eventDate.minimumDate = [NSDate date];
                [setDate setDateFormat:@"MMMM dd, h:mm a"];
            }
            
            dateFinal = [setDate stringFromDate:chooseDate]; //Make the date into a string
            NSLog(@"Event Date is: %@", dateFinal); //Logs out the date out to check
            NSLog(@"The Event is: %@ %@", textEvent, dateFinal); //Logs full event out to check
        }
            nameOfFullEvent = [NSString stringWithFormat:@"New Event: %@ \n %@ \n \n", eventName.text, dateFinal]; //Line from textFieldShouldBeginEditing
            NSLog(@"nameOfFullEvent: %@ on %@", textEvent, dateFinal); //Logs out final event out to check

}

-(void)getEvents
{
    
}





@end
