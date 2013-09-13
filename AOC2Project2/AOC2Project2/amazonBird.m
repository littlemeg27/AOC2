//
//  amazonBird.m
//  AOC2Project2
//
//  Created by Brenna Pavlinchak on 9/11/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "amazonBird.h"

@implementation amazonBird

@synthesize buttonInAmazon;

-(id)init
{
    self = [super init];
    if(self !=nil)
    {
        [self setBirdDestructionRate:20];
        [self setBirdToyStrength:15];
        [self setBirdNoises:@"Sings or Talks"];
        [self setHoldBird:TRUE];
        [self setIsLoud:TRUE];
    }
    return self;
};

-(NSString *)birdDestruction:(NSString*)birdSounds; //calculation method
{
    if ([self isLoud] == [self holdBird])
    {
        
        [self setBirdDestructionRate:[self birdDestructionRate] - [self birdToyStrength] + 2];
        return [NSString stringWithFormat:@"The Amazon %@ and has a destrustion rate of %d if held", [self birdNoises], [self birdDestructionRate]];
    }
    else if ([self isLoud] || ![self holdBird])
    {
        [self setBirdDestructionRate:[self birdDestructionRate] - [self birdToyStrength] + 3];
        return [NSString stringWithFormat:@"The Amazon %@ and has a destrustion rate of %d if let out of the cage to play", [self birdNoises], [self birdDestructionRate]];
    }
    else
    {
        [self setBirdDestructionRate:[self birdDestructionRate] - [self birdToyStrength] + 5];
        return [NSString stringWithFormat:@"The Amazon %@ and has a destrustion rate of %d if not held and left in the cage", [self birdNoises], [self birdDestructionRate]];
    }
    
}

/*-(IBAction)onClick:(id)sender
{
    UIButton *buttonInAmazon = (UIButton*)sender;
    
    if(buttonInAmazon !=nil)
    {
        if(buttonInAmazon.tag == 0)
        {
            NSLog(@"You pressed button 0");
        }
        else if(buttonInAmazon.tag == 1)
        {
            NSLog(@"You pressed button 1");
        }
    }
}*/

/*- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        toggleButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [toggleButton setTitle:@"" forState:UIControlStateNormal];
        toggleButton.userInteractionEnabled=YES;
        
        // add drag listener
        [toggleButton addTarget:self action:@selector(wasDragged:withEvent:)
               forControlEvents:UIControlEventTouchDragInside];
        
        // center and size
        toggleButton.frame = CGRectMake(frame.origin.x, frame.origin.y, width, frame.size.height);
        
        toggleButton.backgroundColor=[UIColor colorWithRed:0.1 green:0.1 blue:0.0 alpha:0.1];
        [toggleButton.layer setBorderWidth:4.0];
        [toggleButton.layer setBorderColor:[[UIColor lightGrayColor] CGColor]];
        toggleButton.layer.cornerRadius=4.0;
        [toggleButton setTitleColor:[UIColor colorWithRed:0.3 green:0.1 blue:0.4 alpha:1.0] forState:UIControlStateNormal];
        
        // add it, centered
        [self addSubview:toggleButton];
    }
    return self;
}*/

@end
