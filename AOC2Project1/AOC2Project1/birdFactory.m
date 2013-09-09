//
//  birdFactory.m
//  AOC2Project1
//
//  Created by Brenna Pavlinchak on 9/7/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "birdFactory.h"

@implementation birdFactory

+(birdBase *)callBirds:(int)birdType
{
    switch (birdType)
    {
        case AMAZON:
            return [[amazonBird alloc] init];
            break;
            
        case ECLECTUS:
            return [[eclectusBird alloc] init];
            break;
            
        case GREENCHEEK:
            return [[greenCheekBird alloc] init];
            break;
            
        default:
            return nil;
            break;
    }
    
}

@end
