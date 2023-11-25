//
//  ViewController.h
//  TimerUP
//
//  Created by Todd Duberstein on 7/14/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>

int minutes;
int seconds;
int TenSeconds;

@interface ViewController : UIViewController
{
    
    IBOutlet UILabel *minute;
    IBOutlet UILabel *second;
    IBOutlet UIButton *TimerStart;
    IBOutlet UIButton *TimerReset;
    IBOutlet UILabel *Ten;
    IBOutlet UILabel *Colon;
    
    NSTimer *CountUpMinutes;
    NSTimer *CountUpSeconds;
    NSTimer *GoUpTen;
    
}

-(IBAction)StartTimer:(id)sender;
-(IBAction)ResetTimer:(id)sender;
-(void)CountingMinutes;
-(void)CountingSeconds;
-(void)TenCountUp;

@end
