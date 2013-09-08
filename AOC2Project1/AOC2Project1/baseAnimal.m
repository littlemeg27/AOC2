//
//  baseAnimal.m
//  AOC2Project1
//
//  Created by Brenna Pavlinchak on 9/6/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "baseAnimal.h"

@implementation baseAnimal

//Creates get and set methods
@synthesize totalNumberOfAnimals, sanctuary;

-(id)init; //initialize
{
    self = [super init];
    if(self !=nil)
    {
        [self setTotalNumberOfAnimals:0];
        [self setSanctuary:nil];
    }
    return self;
}

-(void)findTheNumberOfAnimals; //calculation method to find the number of animals in the shop
{
    NSLog(@"How many animals are in the pet shop %i", totalNumberOfAnimals);
}

@end
