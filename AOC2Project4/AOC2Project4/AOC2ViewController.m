//
//  AOC2ViewController.m
//  AOC2Project4
//
//  Created by Brenna Pavlinchak on 9/25/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "AOC2ViewController.h"
#import "SecondViewController.h"

@interface AOC2ViewController ()

@end

@implementation AOC2ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClickChange:(id)sender //Add an event & switch to events page
{
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    
    if(secondView !=nil)
    {
        secondView.delegate = self; //Date text wont go though without this line
        [self presentViewController:secondView animated:YES completion:nil];
    }
    
}

-(void)eventPost:(NSString*)finishedEvent
{
    createdEvents.text = [createdEvents.text stringByAppendingString:finishedEvent];
}

@end
