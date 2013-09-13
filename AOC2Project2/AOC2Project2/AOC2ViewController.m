//
//  AOC2ViewController.m
//  AOC2Project2
//
//  Created by Brenna Pavlinchak on 9/11/13.
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
        [amazon setBirdDestructionRate:20];
        NSString *textForAmazonLabel = [amazon birdDestruction:@"Talks"];
        UILabel *amazonLabelTitle = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 5.0f, 370.0f, 80.0f)];
        
        if (amazonLabelTitle != nil)
        {
            [amazonLabelTitle setText: textForAmazonLabel];
            [amazonLabelTitle setNumberOfLines:5];
            amazonLabelTitle.backgroundColor = [UIColor lightGrayColor];
            //[[self view] addSubview:amazonLabelTitle];
        }
        
        UILabel *amazonLabel = [[UILabel alloc] initWithFrame:CGRectMake(380.0f, 5.0f, 370.0f, 80.0f)];
        if (amazonLabel != nil)
        {
            
            [amazonLabel setNumberOfLines:5];
            amazonLabel.backgroundColor = [UIColor lightGrayColor];
            //[[self view]addSubview:amazonLabel];
        }
    }
    
    eclectusBird *eclectus = (eclectusBird*)[birdFactory callBirds:ECLECTUS];
    
    if (eclectus != nil)
    {
        [eclectus setBirdDestructionRate:20];
        NSString *textForEclectusLabel = [eclectus birdDestruction:@"Chatters"];
        UILabel *eclectusLabelTitle = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 90.0f, 370.0f, 80.0f)];
        
        if (eclectusLabelTitle != nil)
        {
            [eclectusLabelTitle setText: textForEclectusLabel];
            eclectusLabelTitle.backgroundColor = [UIColor lightGrayColor];
            [eclectusLabelTitle setNumberOfLines:5];
            //[[self view] addSubview:eclectusLabelTitle];
        }
        
        UILabel *eclectusLabel = [[UILabel alloc] initWithFrame:CGRectMake(380.0f, 90.0f, 370.0f, 80.0f)];
        if (eclectusLabel != nil)
        {
            [eclectusLabel setNumberOfLines:5];
            eclectusLabel.backgroundColor = [UIColor lightGrayColor];
            //[[self view]addSubview:eclectusLabel];
        }
    }
    
    greenCheekBird *greenCheek = (greenCheekBird*)[birdFactory callBirds:GREENCHEEK];
    
    if (greenCheek != nil)
    {
        [greenCheek setBirdDestructionRate:20];
        NSString *textForGreenCheekLabel = [greenCheek birdDestruction:@"Talks"];
        UILabel *greenCheekLabelTitle = [[UILabel alloc] initWithFrame:CGRectMake(5.0f, 175.0f, 370.0f, 80.0f)];
        
        if (greenCheekLabelTitle != nil)
        {
            [greenCheekLabelTitle setText: textForGreenCheekLabel];
            greenCheekLabelTitle.backgroundColor = [UIColor lightGrayColor];
            [greenCheekLabelTitle setNumberOfLines:5];
            //[[self view] addSubview:greenCheekLabelTitle];
        }
        
        UILabel *greenCheekLabel = [[UILabel alloc] initWithFrame:CGRectMake(380.0f, 175.0f, 370.0f, 80.0f)];
        if (greenCheekLabel != nil)
        {
            [greenCheekLabel setNumberOfLines:5];
            greenCheekLabel.backgroundColor = [UIColor lightGrayColor];
            //[[self view]addSubview:greenCheekLabel];
        }
    }
    
    [super viewDidLoad];
    
}

-(IBAction)onClick:(id)sender
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
