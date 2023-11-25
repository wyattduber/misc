//
//  ViewController.h
//  Count Down Timer
//
//  Created by Todd Duberstein on 7/23/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>

int seconds;

@interface ViewController : UIViewController
{
    IBOutlet UILabel *Time;
    IBOutlet UILabel *TimesUp;
    IBOutlet UIButton *Select1;
    IBOutlet UIButton *Select2;
    IBOutlet UIButton *Select3;
    IBOutlet UIButton *Select4;
    IBOutlet UIButton *Select5;
    IBOutlet UIButton *Select6;
    IBOutlet UIButton *Select7;
    IBOutlet UIButton *Select8;
    IBOutlet UIButton *Select9;
    IBOutlet UIButton *Select0;
    IBOutlet UIButton *TimerPause;
    IBOutlet UIButton *TimerStart;
    IBOutlet UIButton *TotalReset;
    IBOutlet UIButton *UseAgain;
    
    NSTimer *SecondsDown;
    
}

-(IBAction)StartTimer:(id)sender;
-(IBAction)PauseTimer:(id)sender;
-(IBAction)ResetTotal:(id)sender;
-(IBAction)Choose1:(id)sender;
-(IBAction)Choose2:(id)sender;
-(IBAction)Choose3:(id)sender;
-(IBAction)Choose4:(id)sender;
-(IBAction)Choose5:(id)sender;
-(IBAction)Choose6:(id)sender;
-(IBAction)Choose7:(id)sender;
-(IBAction)Choose8:(id)sender;
-(IBAction)Choose9:(id)sender;
-(IBAction)Choose0:(id)sender;
-(IBAction)UseAgain:(id)sender;
-(void)Counting;
-(void)TimeUp;

@end
