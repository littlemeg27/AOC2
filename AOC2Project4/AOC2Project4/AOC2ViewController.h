//
//  AOC2ViewController.h
//  AOC2Project4
//
//  Created by Brenna Pavlinchak on 9/25/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface AOC2ViewController : UIViewController 
{
    IBOutlet UITextView *createdEvents;
    IBOutlet UIButton *createEventButton;
    int eventsLoaded;
}


-(IBAction)onClickChange:(id)sender;
-(void)eventPost:(NSString*)finishedEvent;

@end
