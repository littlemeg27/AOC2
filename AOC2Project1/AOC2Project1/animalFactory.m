//
//  animalFactory.m
//  AOC2Project1
//
//  Created by Brenna Pavlinchak on 9/6/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "animalFactory.h"

@implementation animalFactory

+(baseAnimal *)callAnimals:(int)animalType
{
    return [[birdAnimal alloc] init];
}

@end
