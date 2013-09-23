//
//  SecondViewController.m
//  AOC2Project3
//
//  Created by Brenna Pavlinchak on 9/22/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

@synthesize delegate, eventDate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillShow:) name:UIKeyboardWillShowNotification object: nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillHide:) name:UIKeyboardWillHideNotification object: nil];
    
    [super viewWillAppear:animated];
    
}

-(void)keyboredWillShow:(NSNotification*)notification
{
    
}

-(void)keyboredWillHide:(NSNotification*)notification
{
    
}

-(IBAction)onSave:(id)sender //Save events on the save event button
{
    NSString *textEvent = eventName.text; //Save the text into a string
    NSLog(@"The Event: %@", textEvent); //Log it out
    
    NSDate *chooseDate = [eventDate date]; //Saves the date
    
    if(chooseDate != nil)
    {
        NSDateFormatter *setDate = [[NSDateFormatter alloc]init];
        if(setDate != nil)
        {
            [setDate setDateFormat:@"MMMM dd, h:mm a"];
        }
        dateFinal = [setDate stringFromDate:chooseDate]; //Make the date into a string
        NSLog(@"Event Date is: %@", dateFinal); //Logs out the date out to check
        NSLog(@"The Event is: %@ on %@", textEvent, dateFinal); //Logs full event out to check
    }
    
    if(delegate != nil)
    {
        nameOfFullEvent = [NSString stringWithFormat:@"%@ \n %@ \n \n", eventName.text, dateFinal];
        [delegate saveEvent:nameOfFullEvent];
    }
    
    [self dismissViewControllerAnimated:TRUE completion:nil];
}

-(IBAction)onClose:(id)sender
{
    [eventName resignFirstResponder];
}


- (void)viewDidLoad
{
    eventDate.minimumDate = [NSDate date];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
