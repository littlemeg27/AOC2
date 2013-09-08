//
//  greenCheekBird.m
//  AOC2Project1
//
//  Created by Brenna Pavlinchak on 9/7/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "greenCheekBird.h"

@implementation greenCheekBird

-(id)init
{
    self = [super init];
    if(self !=nil)
    {
        [self setBirdDestructionRate:5];
        [self setBirdToyStrength:4];
        [self setBirdNoises:@"Low chirps and growly sounds"];
    }
    return self;
};

-(int)birdDestruction:(NSString*)birdSounds; //calculation method
{
    
}

@end
