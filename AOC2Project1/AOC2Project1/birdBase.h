//
//  birdBase.h
//  AOC2Project1
//
//  Created by Brenna Pavlinchak on 9/7/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface birdBase : NSObject
{
    int birdEnum;
}

typedef enum //enum
{
    AMAZON,
    ECLECTUS,
    GREENCHEEK
}birdEnum;

//data members
@property NSString *birdNoises;
@property int birdDestructionRate;
@property int birdToyStrength;



-(id)init; //initialize

-(int)birdDestruction:(NSString*)birdSounds; //calculation method to find the number of animals in the shop


@end
