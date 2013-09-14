//
//  AOC2ViewController.h
//  AOC2Project2
//
//  Created by Brenna Pavlinchak on 9/11/13.
//  Copyright (c) 2013 Brenna Pavlinchak. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "birdFactory.h"

@interface AOC2ViewController : UIViewController
{
    IBOutlet UIButton *pressButtonOne;
    IBOutlet UIButton *pressButtonTwo;
    IBOutlet UIButton *pressButtonThree;
    IBOutlet UIButton *stepperButton;
    IBOutlet UILabel *stepperLabel;
    IBOutlet UITextField *birdValueTextbox;
}

-(IBAction)onClick:(id)sender;
-(IBAction)onStepperChange:(id)sender;
-(IBAction)onClickValue:(id)sender;
-(IBAction)colorChanger:(id)sender;
-(IBAction)onClickChangeView:(id)sender;
-(IBAction)OnChangeView:(id)sender;
@end
