//
//  birdBase.m
//  AOC2Project1
//
//  Created by Brenna Pavlinchak on 9/7/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "birdBase.h"

@implementation birdBase

//Creates get and set methods
//@synthesize totalNumberOfAnimals, sanctuary;

-(id)init; //initialize
{
    self = [super init];
    if(self !=nil)
    {
        [self setBirdDestructionRate:0];
        [self setBirdToyStrength:0];
        [self setBirdNoises:nil];
        [self setHoldBird:nil];
    }
    return self;
}

-(int)birdDestruction:(NSString*)birdSounds; //calculation method 
{
  NSLog(@"");
};


@end
