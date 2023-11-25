//
//  Game.h
//  Pick Up Sticks
//
//  Created by Todd Duberstein on 6/26/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>

int AmountPickedUp;
int CountDown;
int ScoreNumber;

BOOL StickG1;
BOOL StickG2;
BOOL StickG3;
BOOL StickG4;
BOOL StickG5;
BOOL StickG6;
BOOL StickG7;
BOOL StickG8;
BOOL StickG9;
BOOL StickG10;
BOOL StickO1;
BOOL StickO2;
BOOL StickO3;
BOOL StickO4;
BOOL StickO5;
BOOL StickO6;
BOOL StickO7;
BOOL StickO8;
BOOL StickO9;
BOOL StickO10;

@interface Game : UIViewController
{
   
    IBOutlet UIButton *StickOrange1;
    IBOutlet UIButton *StickOrange2;
    IBOutlet UIButton *StickOrange3;
    IBOutlet UIButton *StickOrange4;
    IBOutlet UIButton *StickOrange5;
    IBOutlet UIButton *StickOrange6;
    IBOutlet UIButton *StickOrange7;
    IBOutlet UIButton *StickOrange8;
    IBOutlet UIButton *StickOrange9;
    IBOutlet UIButton *StickOrange10;
    IBOutlet UIButton *StickGreen1;
    IBOutlet UIButton *StickGreen2;
    IBOutlet UIButton *StickGreen3;
    IBOutlet UIButton *StickGreen4;
    IBOutlet UIButton *StickGreen5;
    IBOutlet UIButton *StickGreen6;
    IBOutlet UIButton *StickGreen7;
    IBOutlet UIButton *StickGreen8;
    IBOutlet UIButton *StickGreen9;
    IBOutlet UIButton *StickGreen10;
    IBOutlet UIButton *StartGame;
    IBOutlet UIButton *Exit;
    
    IBOutlet UILabel *TimeTotal;
    IBOutlet UILabel *Sticks;
    IBOutlet UILabel *Result;
    
    NSTimer *GameTimer;
    
}

-(IBAction)StickGreen1:(id)sender;
-(IBAction)StickGreen2:(id)sender;
-(IBAction)StickGreen3:(id)sender;
-(IBAction)StickGreen4:(id)sender;
-(IBAction)StickGreen5:(id)sender;
-(IBAction)StickGreen6:(id)sender;
-(IBAction)StickGreen7:(id)sender;
-(IBAction)StickGreen8:(id)sender;
-(IBAction)StickGreen9:(id)sender;
-(IBAction)StickGreen10:(id)sender;
-(IBAction)StickOrange1:(id)sender;
-(IBAction)StickOrange2:(id)sender;
-(IBAction)StickOrange3:(id)sender;
-(IBAction)StickOrange4:(id)sender;
-(IBAction)StickOrange5:(id)sender;
-(IBAction)StickOrange6:(id)sender;
-(IBAction)StickOrange7:(id)sender;
-(IBAction)StickOrange8:(id)sender;
-(IBAction)StickOrange9:(id)sender;
-(IBAction)StickOrange10:(id)sender;
-(IBAction)StartGame:(id)sender;
-(void)TimeUp;
-(void)PickUpStick;
-(void)PlayerWins;
-(void)timerRun;

@end
