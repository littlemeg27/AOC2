//
//  birdFactory.m
//  AOC2Project1
//
//  Created by Brenna Pavlinchak on 9/7/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "birdFactory.h"

@implementation birdFactory

+(birdBase *)callAnimals:(int)animalType
{
    return [[amazonBird alloc] init];
}

@end
