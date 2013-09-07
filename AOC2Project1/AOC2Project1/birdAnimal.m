//
//  birdAnimal.m
//  AOC2Project1
//
//  Created by Brenna Pavlinchak on 9/6/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "birdAnimal.h"

@implementation birdAnimal

@synthesize eclectus, macaw, lovebird, canary, africanGrey, amazon;

-(id)initialize
{
    self = [super initialize];
    if(self !=nil)
    {
        [self setEclectus:3];
        [self setMacaw:1];
        [self setLovebird:5];
        [self setCanary:5];
        [self setAfricanGrey:2];
        [self setAmazon:2];
        [self setTotalNumberOfAnimals:0];
    }
    return self;
};

-(void)findTheNumberOfAnimals; //overriding the base animal totalNumberOfAnimals
{
    [self setTotalNumberOfAnimals:(eclectus + macaw + lovebird + canary + africanGrey + amazon)];
    NSLog(@"The amount of birds: %@", self);
}
@end
