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
  
    }
    return self;
};

-(void)findTheNumberOfAnimals; //overriding the base animal totalNumberOfAnimals
{
    [self setTotalNumberOfAnimals:(eclectus + macaw + lovebird + canary + africanGrey + amazon)];
    NSLog(@"The amount of birds: %@", self);
}


@end
