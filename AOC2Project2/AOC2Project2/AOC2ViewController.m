//
//  AOC2ViewController.m
//  AOC2Project2
//
//  Created by Brenna Pavlinchak on 9/11/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "AOC2ViewController.h"
#import "SecondView.h"

@interface AOC2ViewController ()

@end

@implementation AOC2ViewController

int currentStepperValue;
int newRate;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [super viewDidLoad];
    
}

-(IBAction)colorChanger:(id)sender
{
    UISegmentedControl *colorChanger = (UISegmentedControl*)sender;
    if (colorChanger != nil)
    {
        if (colorChanger.selectedSegmentIndex == 0)
        {
            self.view.backgroundColor = [UIColor redColor];
        }
        else if (colorChanger.selectedSegmentIndex == 1)
        {
            self.view.backgroundColor = [UIColor darkGrayColor];
        }
        else if (colorChanger.selectedSegmentIndex == 2)
        {
            self.view.backgroundColor = [UIColor purpleColor];
        }
        else if (colorChanger.selectedSegmentIndex == 3)
        {
            self.view.backgroundColor = [UIColor blueColor];
        }
    }
    
}

-(IBAction)onClick:(id)sender
{
    UIButton *classButtons = (UIButton*)sender;
    
    if(classButtons !=nil)
    {
        if(classButtons.tag == 0)
        {
            pressButtonOne.enabled = FALSE;
            pressButtonTwo.enabled = TRUE;
            pressButtonThree.enabled = TRUE;
            birdValueTextbox.text = @"The Amazon loves to talk";
            NSLog(@"You pressed button 0");
        }
        else if(classButtons.tag == 1)
        {
            pressButtonTwo.enabled = FALSE;
            pressButtonOne.enabled = TRUE;
            pressButtonThree.enabled = TRUE;
            birdValueTextbox.text = @"The Eclectus loves to make weird noises";
            NSLog(@"You pressed button 1");
        }
        else if(classButtons.tag == 2)
        {
            pressButtonThree.enabled = FALSE;
            pressButtonOne.enabled = TRUE;
            pressButtonTwo.enabled = TRUE;
            birdValueTextbox.text = @"The Green Cheek loves to squeak";
            NSLog(@"You pressed button 2");
        }

    }
}


-(IBAction)onStepperChange:(id)sender
{
    UIStepper *stepperBtn = (UIStepper*)sender;
    
    if(stepperBtn.tag == 0)
    {
        currentStepperValue = stepperBtn.value;
        NSLog(@"Stepper Value: %d", currentStepperValue);
        stepperLabel.text = [NSString stringWithFormat:@"Stepper Value - %d", currentStepperValue];
        //stepperlabel.text = [NSString stringWithFormat:@"%@",stepperButton];
        
    }
}

-(IBAction)onClickValue:(id)sender
{
    
    if(pressButtonOne.enabled == FALSE)
    {
        amazonBird *amazon = (amazonBird*)[birdFactory callBirds:AMAZON];
        
        if (amazon != nil)
        {
            pressButtonOne.enabled = FALSE;
            [amazon setBirdDestructionRate:20];
            //NSString *textForAmazonLabel = [amazon birdDestruction:@"Talks"];
            //[birdValueLabel setText: textForAmazonLabel];
            newRate =  [amazon birdDestructionRate] * currentStepperValue;
            birdValueTextbox.text = [NSString stringWithFormat:@"New Destruction rate: %i, and the days not held: %d", newRate, currentStepperValue];
            pressButtonTwo.enabled = TRUE;
            pressButtonThree.enabled = TRUE;
            
        }
    }
    
    else if(pressButtonTwo.enabled == FALSE)
    {
        eclectusBird *eclectus = (eclectusBird*)[birdFactory callBirds:ECLECTUS];
    
        if (eclectus != nil)
        {
            pressButtonTwo.enabled = FALSE;
            [eclectus setBirdDestructionRate:12];
            //NSString *textForEclectusLabel = [eclectus birdDestruction:@"Chatters"];
            //[birdValueLabel setText: textForEclectusLabel];
            newRate =  [eclectus birdDestructionRate] * currentStepperValue;
            birdValueTextbox.text = [NSString stringWithFormat:@"New Destruction rate: %i, and the days not held: %d", newRate, currentStepperValue];
            pressButtonOne.enabled = TRUE;
            pressButtonThree.enabled = TRUE;
        }
    }
    
    else if(pressButtonThree.enabled == FALSE)
    {
        greenCheekBird *greenCheek = (greenCheekBird*)[birdFactory callBirds:GREENCHEEK];
    
        if (greenCheek != nil)
        {
            pressButtonThree.enabled = FALSE;
            [greenCheek setBirdDestructionRate:6];
            //NSString *textForGreenCheekLabel = [greenCheek birdDestruction:@"Mumbles"];
            //[birdValueLabel setText: textForGreenCheekLabel];
            newRate =  [greenCheek birdDestructionRate] * currentStepperValue;
            NSLog(@"%d", newRate);
            birdValueTextbox.text = [NSString stringWithFormat:@"New Destruction rate: %i, and the days not held: %d", newRate, currentStepperValue];
            pressButtonOne.enabled = TRUE;
            pressButtonTwo.enabled = TRUE;
        }
    }
}

-(IBAction)onClickChangeView:(id)sender
{
    SecondView *secondViewController = [[SecondView alloc] initWithNibName:@"SecondView" bundle:nil];
    
    if(secondViewController !=nil)
    {
        [self presentViewController:secondViewController animated:YES completion:nil];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
