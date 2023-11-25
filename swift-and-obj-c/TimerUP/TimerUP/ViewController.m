//
//  ViewController.m
//  TimerUP
//
//  Created by Todd Duberstein on 7/14/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)TenCountUp{
    
    TenSeconds = TenSeconds + 1;
    Ten.text = [NSString stringWithFormat:@"%i", TenSeconds];
    
    if (TenSeconds > 5) {
        TenSeconds = 0;
        Ten.text = [NSString stringWithFormat:@"%i", TenSeconds];
    }
}

-(void)CountingMinutes{
    
    minutes = minutes + 1;
    minute.text = [NSString stringWithFormat:@"%i", minutes];
    
    
}
-(void)CountingSeconds{
    
    seconds = seconds + 1;
    second.text = [NSString stringWithFormat:@"%i", seconds];
    
    if (seconds > 9) {
        seconds = 0;
        second.text = [NSString stringWithFormat:@"%i", seconds];
    }
}

-(IBAction)ResetTimer:(id)sender{
    
    TimerReset.hidden = YES;
    TimerStart.hidden = NO;
    
    minutes = 0;
    minute.text = [NSString stringWithFormat:@"%i", minutes];
    
    seconds = 0;
    second.text = [NSString stringWithFormat:@"%i", minutes];
    
    TenSeconds = 0;
    Ten.text = [NSString stringWithFormat:@"%i", TenSeconds];
    
    [CountUpMinutes invalidate];
    [CountUpSeconds invalidate];
    [GoUpTen invalidate];
    
}

-(IBAction)StartTimer:(id)sender{
    
    TimerStart.hidden = YES;
    TimerReset.hidden = NO;
    
    CountUpMinutes = [NSTimer scheduledTimerWithTimeInterval:60.0 target:self selector:@selector(CountingMinutes) userInfo:nil repeats:YES];
    
    CountUpSeconds = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(CountingSeconds) userInfo:nil repeats:YES];
    
    GoUpTen = [NSTimer scheduledTimerWithTimeInterval:10.0 target:self selector:@selector(TenCountUp) userInfo:nil repeats:YES];
}
- (void)viewDidLoad
{
    minute.hidden = NO;
    second.hidden = NO;
    TimerStart.hidden = NO;
    TimerReset.hidden = NO;
    Colon.hidden = NO;
    
    seconds = 0;
    second.text = [NSString stringWithFormat:@"%i", seconds];
    
    minutes = 0;
    minute.text = [NSString stringWithFormat:@"%i", minutes];
    
    TenSeconds = 0;
    Ten.text = [NSString stringWithFormat:@"%i", TenSeconds];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
