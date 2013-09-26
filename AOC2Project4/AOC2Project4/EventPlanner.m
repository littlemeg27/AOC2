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
        
    }
    return self;
}

-(void)NSUserResults
{
    
}
@end
