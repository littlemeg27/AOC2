//
//  AOC2ViewController.m
//  AOC2Project1
//
//  Created by Brenna Pavlinchak on 9/6/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "AOC2ViewController.h"

@interface AOC2ViewController ()

@end

@implementation AOC2ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    amazonBird *amazon = (amazonBird*)[birdFactory callBirds:AMAZON];
    
    if (amazon != nil)
    {
        [amazon birdDestructionRate:20];
        UILabel *amazonLabelTitle = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 5.0f, 310.0f, 50.0f)];
    
        if (amazonLabelTitle != nil)
        {
            [amazonLabelTitle setText:[NSString stringWithFormat:@"Sample",[amazon birdDestructionRate],
            [amazon birdToyStrength]]];
            [amazonLabelTitle setNumberOfLines:2];
            [[self view] addSubview:amazonLabelTitle];
        }
    
        UILabel *amazonLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 60.0f, 310.0f, 50.0f)];
        if (amazonLabel != nil)
        {

            [amazonLabel setNumberOfLines:2];
            [[self view]addSubview:amazonLabel];
        }
    }
    
    eclectusBird *eclectus = (eclectusBird*)[birdFactory callBirds:ECLECTUS];
    
    if (eclectus != nil)
    {
        [eclectus birdDestructionRate:20];
        UILabel *eclectusLabelTitle = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 5.0f, 310.0f, 50.0f)];
        
        if (eclectusLabelTitle != nil)
        {
            [eclectusLabelTitle setText:[NSString stringWithFormat:@"Sample",[eclectus birdDestructionRate],
            [eclectus birdToyStrength]]];
            [eclectusLabelTitle setNumberOfLines:2];
            [[self view] addSubview:eclectusLabelTitle];
        }
        
        UILabel *eclectusLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 60.0f, 310.0f, 50.0f)];
        if (eclectusLabel != nil)
        {
            [eclectusLabel setNumberOfLines:2];
            [[self view]addSubview:eclectusLabel];
        }
    }
    
    greenCheekBird *greenCheek = (greenCheekBird*)[birdFactory callBirds:GREENCHEEK];
    
    if (greenCheek != nil)
    {
        [greenCheek birdDestructionRate:20];
        UILabel *greenCheekLabelTitle = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 5.0f, 310.0f, 50.0f)];
        
        if (greenCheekLabelTitle != nil)
        {
            [greenCheekLabelTitle setText:[NSString stringWithFormat:@"Sample",[greenCheek birdDestructionRate],
            [greenCheek birdToyStrength]]];
            [greenCheekLabelTitle setNumberOfLines:2];
            [[self view] addSubview:greenCheekLabelTitle];
        }
        
        UILabel *greenCheekLabel = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 60.0f, 310.0f, 50.0f)];
        if (greenCheekLabel != nil)
        {
            [greenCheekLabel setNumberOfLines:2];
            [[self view]addSubview:greenCheekLabel];
        }
    }


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
