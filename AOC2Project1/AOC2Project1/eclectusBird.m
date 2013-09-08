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
        [self setBirdDestructionRate:7];
        [self setBirdToyStrength:12];
        [self setBirdNoises:@"Talks or cartoon like sounds"];
    }
    return self;
};

-(int)birdDestruction:(NSString*)birdSounds; //calculation method
{
    
};

@end
