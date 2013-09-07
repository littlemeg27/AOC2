//
//  animalFactory.h
//  AOC2Project1
//
//  Created by Brenna Pavlinchak on 9/6/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "baseAnimal.h"
#import "birdAnimal.h"
#import "catAnimal.h"
#import "dogAnimal.h"

@interface animalFactory : NSObject

+(baseAnimal *)callAnimals: (int)animalType;

@end
