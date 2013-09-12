//
//  greenCheekBird.m
//  AOC2Project2
//
//  Created by Brenna Pavlinchak on 9/11/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "greenCheekBird.h"

@implementation greenCheekBird

-(id)init
{
    self = [super init];
    if(self !=nil)
    {
        [self setBirdDestructionRate:6];
        [self setBirdToyStrength:5];
        [self setBirdNoises:@"Low chirps and growly sounds"];
        [self setHoldBird:TRUE];
        [self setIsClown:TRUE];
    }
    return self;
};

-(NSString *)birdDestruction:(NSString*)birdSounds; //calculation method
{
    if ([self isClown] == [self holdBird])
    {
        [self setBirdDestructionRate:[self birdDestructionRate] + 1 - [self birdToyStrength]];
        return [NSString stringWithFormat:@"The Green Cheek %@ and has a destruction rate of %d if held", [self birdNoises], [self birdDestructionRate]];
    }
    else if ([self isClown] || ![self holdBird])
    {
        [self setBirdDestructionRate:[self birdDestructionRate] + 2 - [self birdToyStrength]];
        return [NSString stringWithFormat:@"The Green Cheek %@ and has a destruction rate of %d if let out of the cage to play", [self birdNoises], [self birdDestructionRate]];
    }
    else
    {
        [self setBirdDestructionRate:[self birdDestructionRate] + 5 - [self birdToyStrength]];
        return [NSString stringWithFormat:@"The Green Cheek %@ and has a destruction rate of %d if not held and left in the cage", [self birdNoises], [self birdDestructionRate]];
    }
    NSLog(@"The birdDestructionRate is %d", birdDestructionRate);
}

@end
