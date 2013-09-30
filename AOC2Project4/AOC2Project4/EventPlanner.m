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
        _instance = [[self alloc] init];
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
            events = [[NSMutableString alloc] initWithString:@""];
        }
    }
    return self;
}


-(void)addEvent:(NSString*)tempEvent
{
    if (tempEvent != nil)
    {
        [events appendString:tempEvent];
    }
}


- (NSMutableString*)getEvents
{
    return events;
}

@end
