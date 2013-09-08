//
//  amazonBird.m
//  AOC2Project1
//
//  Created by Brenna Pavlinchak on 9/7/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "amazonBird.h"

@implementation amazonBird

-(id)init
{
    self = [super init];
    if(self !=nil)
    {
        [self setBirdDestructionRate:10];
        [self setBirdToyStrength:12];
        [self setBirdNoises:@"Sings or Talks"];
        [self setHoldBird:TRUE];
        [self setIsLoud:TRUE];
    }
    return self;
};

-(int)birdDestruction; //calculation method
{
    if ([self isLoud] == [self holdBird])
    {
        [self setBirdDestructionRate:[self birdDestructionRate] + 1 - [self birdToyStrength]];
        return [NSString stringWithFormat:@"The Amazon %@ and has a destrustion rate of %d if held", [self birdNoises], [self birdDestructionRate]];
    }
    else if ([self isLoud] || ![self holdBird])
    {
        [self setBirdDestructionRate:[self birdDestructionRate] + 2 - [self birdToyStrength]];
        return [NSString stringWithFormat:@"The Amazon %@ and has a destrustion rate of %d if let out of the cage to play", [self birdNoises], [self birdDestructionRate]];
    }
    else
    {
        [self setBirdDestructionRate:[self birdDestructionRate] + 5 - [self birdToyStrength]];
        return [NSString stringWithFormat:@"The Amazon %@ and has a destrustion rate of %d if not held and left in the cage", [self birdNoises], [self birdDestructionRate]];
    }
    
}


@end
