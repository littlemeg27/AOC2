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
    //IBOutlets
    IBOutlet UITextView *createdEvents;
    IBOutlet UILabel *createEventSwipeRight;
    IBOutlet UIButton *saveDefaultsButton;
    
    //Swipe Recognizer
    UISwipeGestureRecognizer *rightSwipe;
}


-(void)onSwipe:(UISwipeGestureRecognizer*)recognizer;
-(void)eventPost:(NSString*)finishedEvent;

@end
