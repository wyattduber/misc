//
//  Game.h
//  Fun Run
//
//  Created by Todd Duberstein on 8/6/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>

int RandomObstaclePlaced;
int X;
int Y;

float Seconds;

@interface Game : UIViewController
{
    IBOutlet UIImageView *Obstacle1;
    IBOutlet UIImageView *Obstacle2;
    IBOutlet UIImageView *Obstacle3;
    IBOutlet UIImageView *Obstacle4;
    IBOutlet UIImageView *Backround;
    IBOutlet UIImageView *Player;
    IBOutlet UIImageView *Player2;
    IBOutlet UIImageView *Player3;
    IBOutlet UIImageView *Player4;
    IBOutlet UIImageView *FinishLine1;
    IBOutlet UIImageView *FinishLine2;
    IBOutlet UIImageView *FinishLine3;
    IBOutlet UIButton *Start;
    IBOutlet UILabel *Time;
    IBOutlet UILabel *Result;
    
    NSTimer *Movement;
    NSTimer *Timer;
    
}

-(IBAction)StartGame:(id)sender;
-(void)Moving;
-(void)Win;
-(void)ObstaclePlaced;
-(void)TimerDown;
-(void)Hit;
-(void)T;

@end
