//
//  ViewController.h
//  Calculator 3 (Refresher)
//
//  Created by Todd Duberstein on 10/4/15.
//  Copyright © 2015 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>

float *DisplayNumber;

@interface ViewController : UIViewController
{
    
    IBOutlet UIButton *Zero;
    IBOutlet UIButton *One;
    IBOutlet UIButton *Two;
    IBOutlet UIButton *Three;
    IBOutlet UIButton *Four;
    IBOutlet UIButton *Five;
    IBOutlet UIButton *Six;
    IBOutlet UIButton *Seven;
    IBOutlet UIButton *Eight;
    IBOutlet UIButton *Nine;
    IBOutlet UIButton *AllClear;
    IBOutlet UIButton *Times;
    IBOutlet UIButton *Divide;
    IBOutlet UIButton *Add;
    IBOutlet UIButton *Minus;
    
    IBOutlet UILabel *DisplayLabel;
    
}

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
-(IBAction)AllCLear:(id)sender;
-(IBAction)Times:(id)sender;
-(IBAction)Divide:(id)sender;
-(IBAction)Add:(id)sender;
-(IBAction)Minus:(id)sender;

@end

