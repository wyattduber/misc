//
//  ViewController.m
//  Count Down Timer
//
//  Created by Todd Duberstein on 7/23/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)UseAgain:(id)sender{
    
    Select1.hidden = NO;
    Select2.hidden = NO;
    Select3.hidden = NO;
    Select4.hidden = NO;
    Select5.hidden = NO;
    Select6.hidden = NO;
    Select7.hidden = NO;
    Select8.hidden = NO;
    Select9.hidden = NO;
    Select0.hidden = NO;
    TimerStart.hidden = NO;
    TimerPause.hidden = YES;
    TotalReset.hidden = NO;
    TimesUp.hidden = YES;
    Time.hidden = NO;
    UseAgain.hidden = YES;
    
}

-(IBAction)Choose1:(id)sender{
    
    seconds = seconds * 10;
    seconds = seconds + 1;
    Time.text = [NSString stringWithFormat:@"%i", seconds];
    
}

-(IBAction)Choose2:(id)sender{
    
    seconds = seconds * 10;
    seconds = seconds + 2;
    Time.text = [NSString stringWithFormat:@"%i", seconds];
    
}

-(IBAction)Choose3:(id)sender{
    
    seconds = seconds * 10;
    seconds = seconds + 3;
    Time.text = [NSString stringWithFormat:@"%i", seconds];
    
}

-(IBAction)Choose4:(id)sender{
    
    seconds = seconds * 10;
    seconds = seconds + 4;
    Time.text = [NSString stringWithFormat:@"%i", seconds];;
    
}

-(IBAction)Choose5:(id)sender{
    
    seconds = seconds * 10;
    seconds = seconds + 5;
    Time.text = [NSString stringWithFormat:@"%i", seconds];
    
}

-(IBAction)Choose6:(id)sender{
    
    seconds = seconds * 10;
    seconds = seconds + 6;
    Time.text = [NSString stringWithFormat:@"%i", seconds];;
    
}

-(IBAction)Choose7:(id)sender{
    
    seconds = seconds * 10;
    seconds = seconds + 7;
    Time.text = [NSString stringWithFormat:@"%i", seconds];;
    
}

-(IBAction)Choose8:(id)sender{
    
    seconds = seconds * 10;
    seconds = seconds + 8;
    Time.text = [NSString stringWithFormat:@"%i", seconds];;
    
}

-(IBAction)Choose9:(id)sender{
    
    seconds = seconds * 10;
    seconds = seconds + 9;
    Time.text = [NSString stringWithFormat:@"%i", seconds];
    
}

-(IBAction)Choose0:(id)sender{
    
    seconds = seconds * 10;
    seconds = seconds + 0;
    Time.text = [NSString stringWithFormat:@"%i", seconds];
    
}

-(void)TimeUp{
    
    TimerStart.hidden = YES;
    TimerPause.hidden = YES;
    TotalReset.hidden = YES;
    Select1.hidden = YES;
    Select2.hidden = YES;
    Select3.hidden = YES;
    Select4.hidden = YES;
    Select5.hidden = YES;
    Select6.hidden = YES;
    Select7.hidden = YES;
    Select8.hidden = YES;
    Select9.hidden = YES;
    Select0.hidden = YES;
    TimesUp.hidden = NO;
    Time.hidden = YES;
    UseAgain.hidden = NO;
}

-(void)Counting{
    
    seconds = seconds - 1;
    Time.text = [NSString stringWithFormat:@"%i", seconds];
    
    if (seconds < 1) {
        [SecondsDown invalidate];
        [self TimeUp];
    }
    
}

-(IBAction)StartTimer:(id)sender{
    
    TimerStart.hidden = YES;
    TimerPause.hidden = NO;
    TotalReset.hidden = YES;
    Select1.hidden = YES;
    Select2.hidden = YES;
    Select3.hidden = YES;
    Select4.hidden = YES;
    Select5.hidden = YES;
    Select6.hidden = YES;
    Select7.hidden = YES;
    Select8.hidden = YES;
    Select9.hidden = YES;
    Select0.hidden = YES;
    TimesUp.hidden = YES;
    Time.hidden = NO;
    UseAgain.hidden = YES;
    
    SecondsDown = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(Counting) userInfo:nil repeats:YES];
    
}

-(IBAction)PauseTimer:(id)sender{
    
    TimerStart.hidden = NO;
    TimerPause.hidden = YES;
    TotalReset.hidden = NO;
    Select1.hidden = YES;
    Select2.hidden = YES;
    Select3.hidden = YES;
    Select4.hidden = YES;
    Select5.hidden = YES;
    Select6.hidden = YES;
    Select7.hidden = YES;
    Select8.hidden = YES;
    Select9.hidden = YES;
    Select0.hidden = YES;
    TimesUp.hidden = YES;
    Time.hidden = NO;
    UseAgain.hidden = YES;
    
    [SecondsDown invalidate];
    
}

-(IBAction)ResetTotal:(id)sender{
    
    seconds = 0;
    Time.text = [NSString stringWithFormat:@"%i", seconds];
    
    Select1.hidden = NO;
    Select2.hidden = NO;
    Select3.hidden = NO;
    Select4.hidden = NO;
    Select5.hidden = NO;
    Select6.hidden = NO;
    Select7.hidden = NO;
    Select8.hidden = NO;
    Select9.hidden = NO;
    Select0.hidden = NO;
    TimerStart.hidden = NO;
    TimerPause.hidden = YES;
    TotalReset.hidden = YES;
    TimesUp.hidden = YES;
    Time.hidden = NO;
    UseAgain.hidden = YES;
    
}

- (void)viewDidLoad
{
    Select1.hidden = NO;
    Select2.hidden = NO;
    Select3.hidden = NO;
    Select4.hidden = NO;
    Select5.hidden = NO;
    Select6.hidden = NO;
    Select7.hidden = NO;
    Select8.hidden = NO;
    Select9.hidden = NO;
    Select0.hidden = NO;
    TimerStart.hidden = NO;
    TimerPause.hidden = YES;
    TotalReset.hidden = NO;
    TimesUp.hidden = YES;
    Time.hidden = NO;
    UseAgain.hidden = YES;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
