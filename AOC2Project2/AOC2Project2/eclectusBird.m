//
//  eclectusBird.m
//  AOC2Project2
//
//  Created by Brenna Pavlinchak on 9/11/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "eclectusBird.h"

@implementation eclectusBird

-(id)init
{
    self = [super init];
    if(self !=nil)
    {
        [self setBirdDestructionRate:12];
        [self setBirdToyStrength:12];
        [self setBirdNoises:@"Talks or makes cartoon like sounds"];
        [self setHoldBird:TRUE];
        [self setIsSweet:TRUE];
    }
    return self;
};

-(NSString *)birdDestruction:(NSString*)birdSounds; //calculation method
{
    if ([self isSweet] == [self holdBird])
    {
        NSLog(@"The eclectus birdDestructionRate is %d", [self birdDestructionRate]);
        NSLog(@"The eclectus birdToyStrength is %d", [self birdToyStrength]);
        [self setBirdDestructionRate:[self birdDestructionRate] - [self birdToyStrength] + 2];
        return [NSString stringWithFormat:@"The Eclectus %@ and has a destrustion rate of %d if held", [self birdNoises], [self birdDestructionRate]];
    }
    else if ([self isSweet] || ![self holdBird])
    {
        [self setBirdDestructionRate:[self birdDestructionRate] - [self birdToyStrength] + 3];
        return [NSString stringWithFormat:@"The Eclectus %@ and has a destrustion rate of %d if let out of the cage to play", [self birdNoises], [self birdDestructionRate]];
    }
    else
    {
        [self setBirdDestructionRate:[self birdDestructionRate] - [self birdToyStrength] + 5];
        return [NSString stringWithFormat:@"The Eclectus %@ and has a destrustion rate of %d if not held and left in the cage", [self birdNoises], [self birdDestructionRate]];
    }
    
}

@end
