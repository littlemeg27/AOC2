//
//  birdFactory.h
//  AOC2Project2
//
//  Created by Brenna Pavlinchak on 9/11/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "birdBase.h"
#import "amazonBird.h"
#import "eclectusBird.h"
#import "greenCheekBird.h"

@interface birdFactory : NSObject

+(birdBase *)callBirds:(int)birdType;


@end
