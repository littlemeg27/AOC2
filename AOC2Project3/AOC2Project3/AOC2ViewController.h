//
//  AOC2ViewController.h
//  AOC2Project3
//
//  Created by Brenna Pavlinchak on 9/21/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@protocol EventDetail <NSObject> //Defined protocol with function

@required
-(void)eventPost:(NSString*)finishedEvent;

@end

@interface AOC2ViewController : UIViewController <EventDetail>
{
IBOutlet UITextView *createdEvents;
IBOutlet UIButton *createEventButton;
int eventsLoaded;
}


-(IBAction)onClickChange:(id)sender;

@end


