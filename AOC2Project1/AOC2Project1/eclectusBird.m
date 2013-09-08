//
//  eclectusBird.m
//  AOC2Project1
//
//  Created by Brenna Pavlinchak on 9/7/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "eclectusBird.h"

@implementation eclectusBird

-(id)init
{
    self = [super init];
    if(self !=nil)
    {
        [self setBirdDestructionRate:8];
        [self setBirdToyStrength:12];
        [self setBirdNoises:@"Talks or cartoon like sounds"];
        [self setHoldBird:TRUE];
        [self setIsSweet:TRUE];
    }
    return self;
};

-(int)birdDestruction:(NSString*)birdSounds; //calculation method
{
    if ([self isSweet] == [self holdBird])
    {
        [self setBirdDestructionRate:[self birdDestructionRate] + 1 - [self birdToyStrength]];
        return [NSString stringWithFormat:@"The Eclectus %@ and has a destrustion rate of %f if held", [self birdNoises], [self birdDestructionRate]];
    }
    else if ([self isSweet] || ![self holdBird])
    {
        [self setBirdDestructionRate:[self birdDestructionRate] + 2 - [self birdToyStrength]];
        return [NSString stringWithFormat:@"The Eclectus %@ and has a destrustion rate of %f if let out of the cage to play", [self birdNoises], [self birdDestructionRate]];
    }
    else
    {
        [self setBirdDestructionRate:[self birdDestructionRate] + 5 - [self birdToyStrength]];
        return [NSString stringWithFormat:@"The Eclectus %@ and has a destrustion rate of %f if not held and left in the cage", [self birdNoises], [self birdDestructionRate]];
    }
    
}


@end
