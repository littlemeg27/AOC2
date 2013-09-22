//
//  GetEvents.m
//  AOC2Project3
//
//  Created by Brenna Pavlinchak on 9/22/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "GetEvents.h"

@implementation GetEvents

static GetEvents *_instance = nil;

+(GetEvents*)GetInstance
{
     if(_instance ==nil)
     {
         [[self alloc] init];
     }
    return _instance;
}

-(id)alloc
{
    _instance = [super alloc];
    return _instance;
}

-(id)init
{
    if(self = [super init])
    {
        
    }
    return self;
}



@end
