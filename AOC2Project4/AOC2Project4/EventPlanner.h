//
//  EventPlanner.h
//  AOC2Project4
//
//  Created by Brenna Pavlinchak on 9/26/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EventPlanner.h"

@interface EventPlanner : NSObject
{
    NSString *eventList;
}

+(void)CreateInstance; //Static Method
+(EventPlanner*)GetInstance; //Static Method

-(void)stringCall; //Instance Method


@end