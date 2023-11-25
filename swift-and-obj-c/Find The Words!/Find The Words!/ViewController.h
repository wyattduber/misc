//
//  ViewController.h
//  Find The Words!
//
//  Created by Todd Duberstein on 11/27/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>

float TimerNumber;

int RandomLetter;
int ResultText;

BOOL Number1Selected;
BOOL Number2Selected;
BOOL Number3Selected;
BOOL Number4Selected;
BOOL Number5Selected;
BOOL Number6Selected;
BOOL Number7Selected;
BOOL Number8Selected;
BOOL Number9Selected;
BOOL Number10Selected;
BOOL Number11Selected;
BOOL Number12Selected;
BOOL Number13Selected;
BOOL Number14Selected;
BOOL Number15Selected;
BOOL Number16Selected;
BOOL Number17Selected;
BOOL Number18Selected;
BOOL Number19Selected;
BOOL Number20Selected;

@interface ViewController : UIViewController
{
    IBOutlet UILabel *Word1;
    IBOutlet UILabel *Word2;
    IBOutlet UILabel *Word3;
    IBOutlet UILabel *Word4;
    IBOutlet UILabel *Word5;
    IBOutlet UILabel *Word6;
    IBOutlet UILabel *Word7;
    IBOutlet UILabel *Word8;
    IBOutlet UILabel *Word9;
    IBOutlet UILabel *Word10;
    IBOutlet UILabel *Word11;
    IBOutlet UILabel *Word12;
    IBOutlet UILabel *Word13;
    IBOutlet UILabel *Word14;
    IBOutlet UILabel *Word15;
    IBOutlet UILabel *Word16;
    IBOutlet UILabel *Word17;
    IBOutlet UILabel *Word18;
    IBOutlet UILabel *Word19;
    IBOutlet UILabel *Word20;
    IBOutlet UILabel *Timer;
    IBOutlet UILabel *Result;
    
    NSTimer *CountDownTimer;
    NSTimer *ShowResult;
    NSTimer *WordCheckTimer;
    
}

-(IBAction)Word1:(id)sender;
-(IBAction)Word2:(id)sender;
-(IBAction)Word3:(id)sender;
-(IBAction)Word4:(id)sender;
-(IBAction)Word5:(id)sender;
-(IBAction)Word6:(id)sender;
-(IBAction)Word7:(id)sender;
-(IBAction)Word8:(id)sender;
-(IBAction)Word9:(id)sender;
-(IBAction)Word10:(id)sender;
-(IBAction)Word11:(id)sender;
-(IBAction)Word12:(id)sender;
-(IBAction)Word13:(id)sender;
-(IBAction)Word14:(id)sender;
-(IBAction)Word15:(id)sender;
-(IBAction)Word16:(id)sender;
-(IBAction)Word17:(id)sender;
-(IBAction)Word18:(id)sender;
-(IBAction)Word19:(id)sender;
-(IBAction)Word20:(id)sender;
-(IBAction)StartGame:(id)sender;

-(void)FindWord;
-(void)TimeUp;
-(void)TimerDown;
-(void)ShowingResult;
-(void)CheckWord;
-(void)WordCorrect;
-(void)WordWrong;

@end

