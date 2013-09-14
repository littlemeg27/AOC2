//
//  SecondView.m
//  AOC2Project2
//
//  Created by Brenna Pavlinchak on 9/13/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "SecondView.h"

#define BUTTONINFO 0

@interface SecondView ()

@end

@implementation SecondView

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    infoButton = [UIButton buttonWithType:UIButtonTypeInfoDark]; //Start of the info button
    
    if(infoButton !=nil)
    {
        infoButton.frame = CGRectMake(40.0, 550.0, 25.0, 25.0);
        [infoButton addTarget:self action:@selector(onClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    [self.view addSubview:infoButton];
    
    infoButtonLabel = [[UILabel alloc] initWithFrame:CGRectMake(40.0, 600.0, 600.0, 100.0)]; //start of the infoButtonLabel
    
    if(infoButtonLabel !=nil)
    {
        infoButtonLabel.textColor = [UIColor whiteColor];
        infoButtonLabel.textAlignment = NSTextAlignmentCenter;
        infoButton.tag = BUTTONINFO;
    }
    
}

- (void)onClick:(UIButton*) userNameButton
{
           
    if (infoButton.tag == BUTTONINFO) //if for the infor button
    {
        infoButtonLabel.text = @"This App was Written and Designed by Brenna Pavlinchak";
        infoButtonLabel.backgroundColor = [UIColor blueColor];
        [self.view addSubview:infoButtonLabel];
    }
    
}//End of onClick function


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)onClose:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
