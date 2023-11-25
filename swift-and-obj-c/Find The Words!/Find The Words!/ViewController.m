//
//  ViewController.m
//  Find The Words!
//
//  Created by Todd Duberstein on 11/27/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)WordCorrect{
    
    ResultText = arc4random() %4;
    switch (ResultText) {
        case 1:
            Result.text = [NSString stringWithFormat:@"Good Job!"];
            break;
        case 2:
            Result.text = [NSString stringWithFormat:@"Nice!"];
            break;
        case 3:
            Result.text = [NSString stringWithFormat:@"Cool!"];
            break;
        case 4:
            Result.text = [NSString stringWithFormat:@"Fabulous!"];
            break;
        default:
            break;
    }

    
}

-(void)WordWrong{
    
    ResultText = arc4random() %4;
    switch (ResultText) {
        case 1:
            Result.text = [NSString stringWithFormat:@"That's Not a Word!"];
            break;
        case 2:
            Result.text = [NSString stringWithFormat:@"Wrong!"];
            break;
        case 3:
            Result.text = [NSString stringWithFormat:@"Close!"];
            break;
        case 4:
            Result.text = [NSString stringWithFormat:@"Nope!"];
            break;
        default:
            break;
    }

    
}


-(void)CheckWord{
    
    if (Number1Selected == YES && Number2Selected == YES && Number3Selected == YES && Number4Selected == YES && Word1.text == [NSString stringWithFormat:@"T"] && Word2.text == [NSString stringWithFormat:@"A"] && Word3.text == [NSString stringWithFormat:@"P"]) {
        [self WordCorrect];
    }
    else {
        [self WordWrong];
    }
    
}

-(void)ShowingResult{
    
    Result.hidden = NO;
    
    ResultText = arc4random() %4;
    switch (ResultText) {
        case 1:
            Result.text = [NSString stringWithFormat:@"Good Job!"];
            break;
        case 2:
            Result.text = [NSString stringWithFormat:@"Nice!"];
            break;
        case 3:
            Result.text = [NSString stringWithFormat:@"Cool!"];
            break;
        case 4:
            Result.text = [NSString stringWithFormat:@"Fabulous!"];
            break;
        default:
            break;
    }
    
    
}

-(void)FindWord{
    
    ShowResult = [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(ShowingResult) userInfo:nil repeats:NO];
    
}

-(IBAction)StartGame:(id)sender{
    
    CountDownTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(TimerDown) userInfo:nil repeats:YES];
    WordCheckTimer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(CheckWord) userInfo:nil repeats:YES];
    
}

-(void)TimerDown{
    
    TimerNumber = TimerNumber - 0.01;
    Timer.text = [NSString stringWithFormat:@"%.2f", TimerNumber];
    
}

-(IBAction)Word1:(id)sender{
    
    Result.hidden = YES;
    Number1Selected = YES;
    
}

-(IBAction)Word2:(id)sender{
    
    Result.hidden = YES;
    Number2Selected = YES;
    
}

-(IBAction)Word3:(id)sender{
    
    Result.hidden = YES;
    Number3Selected = YES;
    
}

-(IBAction)Word4:(id)sender{
    
    Result.hidden = YES;
    Number4Selected = YES;
    
}

-(IBAction)Word5:(id)sender{
    
    Result.hidden = YES;
    Number5Selected = YES;
    
}

-(IBAction)Word6:(id)sender{
    
    Result.hidden = YES;
    Number6Selected = YES;
    
}

-(IBAction)Word7:(id)sender{
    
    Result.hidden = YES;
    Number7Selected = YES;
    
}

-(IBAction)Word8:(id)sender{
    
    Result.hidden = YES;
    Number8Selected = YES;
    
}

-(IBAction)Word9:(id)sender{
    
    Result.hidden = YES;
    Number9Selected = YES;
    
}

-(IBAction)Word10:(id)sender{
    
    Result.hidden = YES;
    Number10Selected = YES;
    
}

-(IBAction)Word11:(id)sender{
    
    Result.hidden = YES;
    Number11Selected = YES;
    
}

-(IBAction)Word12:(id)sender{
    
    Result.hidden = YES;
    Number12Selected = YES;
    
}

-(IBAction)Word13:(id)sender{
    
    Result.hidden = YES;
    Number13Selected = YES;
    
}

-(IBAction)Word14:(id)sender{
    
    Result.hidden = YES;
    Number14Selected = YES;
    
}

-(IBAction)Word15:(id)sender{
    
    Result.hidden = YES;
    Number15Selected = YES;
    
}
    
-(IBAction)Word16:(id)sender{
        
    Result.hidden = YES;
    Number16Selected = YES;
    
}

-(IBAction)Word17:(id)sender{
    
    Result.hidden = YES;
    Number17Selected = YES;
    
}

-(IBAction)Word18:(id)sender{
    
    Result.hidden = YES;
    Number18Selected = YES;
    
}

-(IBAction)Word19:(id)sender{
    
    Result.hidden = YES;
    Number19Selected = YES;
    
}

-(IBAction)Word20:(id)sender{
    
    Result.hidden = YES;
    Number20Selected = YES;
    
}


- (void)viewDidLoad {
    
    Result.hidden = YES;
    Word1.hidden = NO;
    Word2.hidden = NO;
    Word3.hidden = NO;
    Word4.hidden = NO;
    Word5.hidden = NO;
    Word6.hidden = NO;
    Word7.hidden = NO;
    Word8.hidden = NO;
    Word9.hidden = NO;
    Word10.hidden = NO;
    Word11.hidden = NO;
    Word12.hidden = NO;
    Word13.hidden = NO;
    Word14.hidden = NO;
    Word15.hidden = NO;
    Word16.hidden = NO;
    Word17.hidden = NO;
    Word18.hidden = NO;
    Word19.hidden = NO;
    Word20.hidden = NO;
    
    RandomLetter = arc4random() %10;
    
    switch (RandomLetter) {
        case 1:
            Word1.text = [NSString stringWithFormat:@"A"];
            Word2.text = [NSString stringWithFormat:@"A"];
            Word3.text = [NSString stringWithFormat:@"A"];
            Word4.text = [NSString stringWithFormat:@"A"];
            Word5.text = [NSString stringWithFormat:@"A"];
            Word6.text = [NSString stringWithFormat:@"A"];
            Word7.text = [NSString stringWithFormat:@"A"];
            Word8.text = [NSString stringWithFormat:@"A"];
            Word9.text = [NSString stringWithFormat:@"A"];
            Word10.text = [NSString stringWithFormat:@"A"];
            Word11.text = [NSString stringWithFormat:@"A"];
            Word12.text = [NSString stringWithFormat:@"A"];
            Word13.text = [NSString stringWithFormat:@"A"];
            Word14.text = [NSString stringWithFormat:@"A"];
            Word15.text = [NSString stringWithFormat:@"A"];
            Word16.text = [NSString stringWithFormat:@"A"];
            Word17.text = [NSString stringWithFormat:@"A"];
            Word18.text = [NSString stringWithFormat:@"A"];
            Word19.text = [NSString stringWithFormat:@"A"];
            Word20.text = [NSString stringWithFormat:@"A"];
            break;
        case 2:
            Word1.text = [NSString stringWithFormat:@"S"];
            Word2.text = [NSString stringWithFormat:@"S"];
            Word3.text = [NSString stringWithFormat:@"S"];
            Word4.text = [NSString stringWithFormat:@"S"];
            Word5.text = [NSString stringWithFormat:@"S"];
            Word6.text = [NSString stringWithFormat:@"S"];
            Word7.text = [NSString stringWithFormat:@"S"];
            Word8.text = [NSString stringWithFormat:@"S"];
            Word9.text = [NSString stringWithFormat:@"S"];
            Word10.text = [NSString stringWithFormat:@"S"];
            Word11.text = [NSString stringWithFormat:@"S"];
            Word12.text = [NSString stringWithFormat:@"S"];
            Word13.text = [NSString stringWithFormat:@"S"];
            Word14.text = [NSString stringWithFormat:@"S"];
            Word15.text = [NSString stringWithFormat:@"S"];
            Word16.text = [NSString stringWithFormat:@"S"];
            Word17.text = [NSString stringWithFormat:@"S"];
            Word18.text = [NSString stringWithFormat:@"S"];
            Word19.text = [NSString stringWithFormat:@"S"];
            Word20.text = [NSString stringWithFormat:@"S"];
            break;
        case 3:
            Word1.text = [NSString stringWithFormat:@"E"];
            Word2.text = [NSString stringWithFormat:@"E"];
            Word3.text = [NSString stringWithFormat:@"E"];
            Word4.text = [NSString stringWithFormat:@"E"];
            Word5.text = [NSString stringWithFormat:@"E"];
            Word6.text = [NSString stringWithFormat:@"E"];
            Word7.text = [NSString stringWithFormat:@"E"];
            Word8.text = [NSString stringWithFormat:@"E"];
            Word9.text = [NSString stringWithFormat:@"E"];
            Word10.text = [NSString stringWithFormat:@"E"];
            Word11.text = [NSString stringWithFormat:@"E"];
            Word13.text = [NSString stringWithFormat:@"E"];
            Word14.text = [NSString stringWithFormat:@"E"];
            Word15.text = [NSString stringWithFormat:@"E"];
            Word16.text = [NSString stringWithFormat:@"E"];
            Word17.text = [NSString stringWithFormat:@"E"];
            Word18.text = [NSString stringWithFormat:@"E"];
            Word19.text = [NSString stringWithFormat:@"E"];
            Word20.text = [NSString stringWithFormat:@"E"];
            break;
        case 4:
            Word1.text = [NSString stringWithFormat:@"T"];
            Word2.text = [NSString stringWithFormat:@"T"];
            Word3.text = [NSString stringWithFormat:@"T"];
            Word4.text = [NSString stringWithFormat:@"T"];
            Word5.text = [NSString stringWithFormat:@"T"];
            Word6.text = [NSString stringWithFormat:@"T"];
            Word7.text = [NSString stringWithFormat:@"T"];
            Word8.text = [NSString stringWithFormat:@"T"];
            Word9.text = [NSString stringWithFormat:@"T"];
            Word10.text = [NSString stringWithFormat:@"T"];
            Word11.text = [NSString stringWithFormat:@"T"];
            Word12.text = [NSString stringWithFormat:@"T"];
            Word13.text = [NSString stringWithFormat:@"T"];
            Word14.text = [NSString stringWithFormat:@"T"];
            Word15.text = [NSString stringWithFormat:@"T"];
            Word16.text = [NSString stringWithFormat:@"T"];
            Word17.text = [NSString stringWithFormat:@"T"];
            Word18.text = [NSString stringWithFormat:@"T"];
            Word19.text = [NSString stringWithFormat:@"T"];
            Word20.text = [NSString stringWithFormat:@"T"];
            break;
        case 5:
            Word1.text = [NSString stringWithFormat:@"P"];
            Word2.text = [NSString stringWithFormat:@"P"];
            Word3.text = [NSString stringWithFormat:@"P"];
            Word4.text = [NSString stringWithFormat:@"P"];
            Word5.text = [NSString stringWithFormat:@"P"];
            Word6.text = [NSString stringWithFormat:@"P"];
            Word7.text = [NSString stringWithFormat:@"P"];
            Word8.text = [NSString stringWithFormat:@"P"];
            Word9.text = [NSString stringWithFormat:@"P"];
            Word10.text = [NSString stringWithFormat:@"P"];
            Word11.text = [NSString stringWithFormat:@"P"];
            Word12.text = [NSString stringWithFormat:@"P"];
            Word13.text = [NSString stringWithFormat:@"P"];
            Word14.text = [NSString stringWithFormat:@"P"];
            Word15.text = [NSString stringWithFormat:@"P"];
            Word16.text = [NSString stringWithFormat:@"P"];
            Word17.text = [NSString stringWithFormat:@"P"];
            Word18.text = [NSString stringWithFormat:@"P"];
            Word19.text = [NSString stringWithFormat:@"P"];
            Word20.text = [NSString stringWithFormat:@"P"];
            break;
        case 6:
            Word1.text = [NSString stringWithFormat:@"B"];
            Word2.text = [NSString stringWithFormat:@"B"];
            Word3.text = [NSString stringWithFormat:@"B"];
            Word4.text = [NSString stringWithFormat:@"B"];
            Word5.text = [NSString stringWithFormat:@"B"];
            Word6.text = [NSString stringWithFormat:@"B"];
            Word7.text = [NSString stringWithFormat:@"B"];
            Word8.text = [NSString stringWithFormat:@"B"];
            Word9.text = [NSString stringWithFormat:@"B"];
            Word10.text = [NSString stringWithFormat:@"B"];
            Word11.text = [NSString stringWithFormat:@"B"];
            Word12.text = [NSString stringWithFormat:@"B"];
            Word13.text = [NSString stringWithFormat:@"B"];
            Word14.text = [NSString stringWithFormat:@"B"];
            Word15.text = [NSString stringWithFormat:@"B"];
            Word16.text = [NSString stringWithFormat:@"B"];
            Word17.text = [NSString stringWithFormat:@"B"];
            Word18.text = [NSString stringWithFormat:@"B"];
            Word19.text = [NSString stringWithFormat:@"B"];
            Word20.text = [NSString stringWithFormat:@"B"];
            break;
        case 7:
            Word1.text = [NSString stringWithFormat:@"G"];
            Word2.text = [NSString stringWithFormat:@"G"];
            Word3.text = [NSString stringWithFormat:@"G"];
            Word4.text = [NSString stringWithFormat:@"G"];
            Word5.text = [NSString stringWithFormat:@"G"];
            Word6.text = [NSString stringWithFormat:@"G"];
            Word7.text = [NSString stringWithFormat:@"G"];
            Word8.text = [NSString stringWithFormat:@"G"];
            Word9.text = [NSString stringWithFormat:@"G"];
            Word10.text = [NSString stringWithFormat:@"G"];
            Word11.text = [NSString stringWithFormat:@"G"];
            Word12.text = [NSString stringWithFormat:@"G"];
            Word13.text = [NSString stringWithFormat:@"G"];
            Word14.text = [NSString stringWithFormat:@"G"];
            Word15.text = [NSString stringWithFormat:@"G"];
            Word16.text = [NSString stringWithFormat:@"G"];
            Word17.text = [NSString stringWithFormat:@"G"];
            Word18.text = [NSString stringWithFormat:@"G"];
            Word19.text = [NSString stringWithFormat:@"G"];
            Word20.text = [NSString stringWithFormat:@"G"];
            break;
        case 8:
            Word1.text = [NSString stringWithFormat:@"H"];
            Word2.text = [NSString stringWithFormat:@"H"];
            Word3.text = [NSString stringWithFormat:@"H"];
            Word4.text = [NSString stringWithFormat:@"H"];
            Word5.text = [NSString stringWithFormat:@"H"];
            Word6.text = [NSString stringWithFormat:@"H"];
            Word7.text = [NSString stringWithFormat:@"H"];
            Word8.text = [NSString stringWithFormat:@"H"];
            Word9.text = [NSString stringWithFormat:@"H"];
            Word10.text = [NSString stringWithFormat:@"H"];
            Word11.text = [NSString stringWithFormat:@"H"];
            Word12.text = [NSString stringWithFormat:@"H"];
            Word13.text = [NSString stringWithFormat:@"H"];
            Word14.text = [NSString stringWithFormat:@"H"];
            Word15.text = [NSString stringWithFormat:@"H"];
            Word16.text = [NSString stringWithFormat:@"H"];
            Word17.text = [NSString stringWithFormat:@"H"];
            Word18.text = [NSString stringWithFormat:@"H"];
            Word19.text = [NSString stringWithFormat:@"H"];
            Word20.text = [NSString stringWithFormat:@"H"];
            break;
        case 9:
            Word1.text = [NSString stringWithFormat:@"I"];
            Word2.text = [NSString stringWithFormat:@"I"];
            Word3.text = [NSString stringWithFormat:@"I"];
            Word4.text = [NSString stringWithFormat:@"I"];
            Word5.text = [NSString stringWithFormat:@"I"];
            Word6.text = [NSString stringWithFormat:@"I"];
            Word7.text = [NSString stringWithFormat:@"I"];
            Word8.text = [NSString stringWithFormat:@"I"];
            Word9.text = [NSString stringWithFormat:@"I"];
            Word10.text = [NSString stringWithFormat:@"I"];
            Word11.text = [NSString stringWithFormat:@"I"];
            Word12.text = [NSString stringWithFormat:@"I"];
            Word13.text = [NSString stringWithFormat:@"I"];
            Word14.text = [NSString stringWithFormat:@"I"];
            Word15.text = [NSString stringWithFormat:@"I"];
            Word16.text = [NSString stringWithFormat:@"I"];
            Word17.text = [NSString stringWithFormat:@"I"];
            Word18.text = [NSString stringWithFormat:@"I"];
            Word19.text = [NSString stringWithFormat:@"I"];
            Word20.text = [NSString stringWithFormat:@"I"];
            break;
        case 10:
            Word1.text = [NSString stringWithFormat:@"D"];
            Word2.text = [NSString stringWithFormat:@"D"];
            Word3.text = [NSString stringWithFormat:@"D"];
            Word4.text = [NSString stringWithFormat:@"D"];
            Word5.text = [NSString stringWithFormat:@"D"];
            Word6.text = [NSString stringWithFormat:@"D"];
            Word7.text = [NSString stringWithFormat:@"D"];
            Word8.text = [NSString stringWithFormat:@"D"];
            Word9.text = [NSString stringWithFormat:@"D"];
            Word10.text = [NSString stringWithFormat:@"D"];
            Word11.text = [NSString stringWithFormat:@"D"];
            Word12.text = [NSString stringWithFormat:@"D"];
            Word13.text = [NSString stringWithFormat:@"D"];
            Word14.text = [NSString stringWithFormat:@"D"];
            Word15.text = [NSString stringWithFormat:@"D"];
            Word16.text = [NSString stringWithFormat:@"D"];
            Word17.text = [NSString stringWithFormat:@"D"];
            Word18.text = [NSString stringWithFormat:@"D"];
            Word19.text = [NSString stringWithFormat:@"D"];
            Word20.text = [NSString stringWithFormat:@"D"];
            break;
            
        default:
            break;
    }
    
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
