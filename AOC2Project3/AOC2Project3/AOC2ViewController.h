//
//  AOC2ViewController.h
//  AOC2Project3
//
//  Created by Brenna Pavlinchak on 9/21/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AOC2ViewController : UIViewController
{
IBOutlet UITextView *createdEvents;
IBOutlet UIButton *createEventButton;
int eventsLoaded;
}


-(IBAction)onClickChange:(id)sender;

@end


