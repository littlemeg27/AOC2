//
//  AOC2ViewController.m
//  AOC2Project3
//
<<<<<<< HEAD
//  Created by Brenna Pavlinchak on 9/21/13.
=======
//  Created by Brenna Pavlinchak on 9/18/13.
>>>>>>> 1da458dd409250bc941a38e4d4685a586c6554c6
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
}

<<<<<<< HEAD
=======
-(IBAction)onClickChangeView:(id)sender
{
    SecondView *secondViewController = [[SecondView alloc] initWithNibName:@"SecondView" bundle:nil];
    
    if(secondViewController !=nil)
    {
        [self presentViewController:secondViewController animated:YES completion:nil];
    }
}

>>>>>>> 1da458dd409250bc941a38e4d4685a586c6554c6
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
