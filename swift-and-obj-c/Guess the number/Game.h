//
//  Game.h
//  Guess the number
//
//  Created by Todd Duberstein on 7/17/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>

int RandomNumber;
int Number1Answer;
int Number2Answer;
int Number3Answer;
int Number4Answer;
int Number5Answer;

float Seconds;

BOOL Answer1Correct;
BOOL Answer2Correct;
BOOL Answer3Correct;
BOOL Answer4Correct;
BOOL Answer5Correct;
BOOL GameInProgress;

@interface Game : UIViewController
{
    
    IBOutlet UILabel *NumberRandom;
    IBOutlet UILabel *Result;
    IBOutlet UILabel *Timer;
    
    IBOutlet UIButton *Answer1;
    IBOutlet UIButton *Answer2;
    IBOutlet UIButton *Answer3;
    IBOutlet UIButton *Answer4;
    IBOutlet UIButton *Answer5;
    IBOutlet UIButton *Exit;
    IBOutlet UIButton *StartGame;
    
    NSTimer *Temporary;
    NSTimer *TimeDown;
    
}

-(IBAction)Answer1:(id)sender;
-(IBAction)Answer2:(id)sender;
-(IBAction)Answer3:(id)sender;
-(IBAction)Answer4:(id)sender;
-(IBAction)Answer5:(id)sender;
-(IBAction)Start:(id)sender;

-(void)AnswerReveal;
-(void)CorrectAnswer;
-(void)WrongAnswer;
-(void)One;
-(void)Two;
-(void)Three;
-(void)Four;
-(void)Five;
-(void)CountDownSeconds;

@end
