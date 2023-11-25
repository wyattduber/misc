//
//  ViewController.h
//  calculator 2
//
//  Created by Todd Duberstein on 10/28/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>
int Method;
int SelectNumber;


float ScreenNumber;


@interface ViewController : UIViewController
{
    IBOutlet UIButton *ONE;
    IBOutlet UIButton *TWO;
    IBOutlet UIButton *THREE;
    IBOutlet UIButton *FOUR;
    IBOutlet UIButton *FIVE;
    IBOutlet UIButton *SIX;
    IBOutlet UIButton *SEVEN;
    IBOutlet UIButton *EIGHT;
    IBOutlet UIButton *NINE;
    IBOutlet UIButton *ZERO;
    IBOutlet UIButton *ALLCLEAR;
    IBOutlet UIButton *MULTIPLY;
    IBOutlet UIButton *DIVIDE;
    IBOutlet UIButton *ADD;
    IBOutlet UIButton *SUBTRACT;
    IBOutlet UIButton *EQUALS;
    
    IBOutlet UILabel *NUMBER;

}
-(IBAction)Multiply:(id)sender;
-(IBAction)Divide:(id)sender;
-(IBAction)Addition:(id)sender;
-(IBAction)Subtraction:(id)sender;
-(IBAction)Equals:(id)sender;
-(IBAction)AllClear:(id)sender;
-(IBAction)One:(id)sender;
-(IBAction)Two:(id)sender;
-(IBAction)Three:(id)sender;
-(IBAction)Four:(id)sender;
-(IBAction)Five:(id)sender;
-(IBAction)Six:(id)sender;
-(IBAction)Seven:(id)sender;
-(IBAction)Eight:(id)sender;
-(IBAction)Nine:(id)sender;
-(IBAction)Zero:(id)sender;

@end

