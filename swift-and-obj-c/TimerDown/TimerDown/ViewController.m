//
//  ViewController.m
//  TimerDown
//
//  Created by Todd Duberstein on 4/10/15.
//  Copyright (c) 2015 DuberFam. All rights reserved.
//

#import "ViewController.h"

int *millisecondNumber;
int *secondNumber;
int minuteNumber;
int hourNumber;

BOOL timerRunning;

@interface ViewController ()
{
    IBOutlet UIButton *number1Button;
    IBOutlet UIButton *number2Button;
    IBOutlet UIButton *number3Button;
    IBOutlet UIButton *number4Button;
    IBOutlet UIButton *number5Button;
    IBOutlet UIButton *number6Button;
    IBOutlet UIButton *number7Button;
    IBOutlet UIButton *number8Button;
    IBOutlet UIButton *number9Button;
    IBOutlet UIButton *number0Button;
    IBOutlet UIButton *timerPauseButton;
    IBOutlet UIButton *timerResetButton;
    IBOutlet UIButton *timerStartButton;
    IBOutlet UIButton *timerUnPauseButton;
    
    NSTimer *timerTimer;
    
}

-(IBAction)timerPause:(id)sender;
-(IBAction)timerReset:(id)sender;
-(IBAction)timerStart:(id)sender;
-(IBAction)timerUnPause:(id)sender;
-(IBAction)number1:(id)sender;
-(IBAction)number2:(id)sender;
-(IBAction)number3:(id)sender;
-(IBAction)number4:(id)sender;
-(IBAction)number5:(id)sender;
-(IBAction)number6:(id)sender;
-(IBAction)number7:(id)sender;
-(IBAction)number8:(id)sender;
-(IBAction)number9:(id)sender;
-(IBAction)number0:(id)sender;
-(void)runningTimer;

@end

@implementation ViewController

-(IBAction)number1:(id)sender{
    
    
    
}

-(IBAction)number2:(id)sender{
    
    
    
}

-(IBAction)number3:(id)sender{
    
    
    
}

-(IBAction)number4:(id)sender{
    
    
    
}

-(IBAction)number5:(id)sender{
    
    
    
}

-(IBAction)number6:(id)sender{
    
    
    
}

-(IBAction)number7:(id)sender{
    
    
    
}

-(IBAction)number8:(id)sender;
-(IBAction)number9:(id)sender;
-(IBAction)number0:(id)sender;
-(void)runningTimer{
    
    
    
}


-(IBAction)timerPause:(id)sender{
    
    
    
}

-(IBAction)timerReset:(id)sender{
    
    
    
}

-(IBAction)timerStart:(id)sender{
    
    [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(runningTimer) userInfo:nil repeats:YES];
    
    
    
}

-(IBAction)timerUnPause:(id)sender{
    
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    number0Button.hidden = NO;
    number1Button.hidden = NO;
    number2Button.hidden = NO;
    number3Button.hidden = NO;
    number4Button.hidden = NO;
    number5Button.hidden = NO;
    number6Button.hidden = NO;
    number7Button.hidden = NO;
    number8Button.hidden = NO;
    number9Button.hidden = NO;
    timerPauseButton.hidden = YES;
    timerResetButton.hidden = YES;
    timerStartButton.hidden = NO;
    timerUnPauseButton.hidden = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
