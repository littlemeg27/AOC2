//
//  baseAnimal.h
//  AOC2Project1
//
//  Created by Brenna Pavlinchak on 9/6/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface baseAnimal : NSObject
{
    int animalEnum;
}

typedef enum //enum
{
   DOG,
   CAT,
   BIRD
}animalEnum;

//data members
@property NSString *sanctuary;
@property int totalNumberOfAnimals;


-(id)init; //initialize

-(void)findTheNumberOfAnimals; //calculation method to find the number of animals in the shop


@end
