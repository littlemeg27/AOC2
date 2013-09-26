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

-(void)viewWillAppear:(BOOL)animated
{
    rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    rightSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [createEventSwipe addGestureRecognizer:rightSwipe];

    leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipe:)];
    leftSwipe.direction = UISwipeGestureRecognizerDirectionRight;
    [createEventSwipe addGestureRecognizer:leftSwipe];
    
    [super viewWillAppear:animated];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer //Took out the IBAction for change page and put it in the swipe
{
    if(recognizer.direction == UISwipeGestureRecognizerDirectionRight)
    {
        SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
        
        if(secondView !=nil)
        {
            [self presentViewController:secondView animated:YES completion:nil];
        }

    }
}

/*-(void)eventPost:(NSString*)finishedEvent
{
    createdEvents.text = [createdEvents.text stringByAppendingString:finishedEvent];
}*/
//May not need this 

@end
