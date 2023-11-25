//
//  Game.h
//  Quiz Game
//
//  Created by Todd Duberstein on 7/16/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>

int CategoryLoaded;
int QuestionSelected;
int ScoreNumber;
int LivesNumber;
int TimeLeft;
BOOL Answer1Correct;
BOOL Answer2Correct;
BOOL Answer3Correct;
BOOL Answer4Correct;
BOOL GameInProgress;


@interface Game : UIViewController
{
    
    IBOutlet UILabel *CategorySelected;
    IBOutlet UILabel *QuestionText;
    IBOutlet UILabel *Score;
    IBOutlet UILabel *Lives;
    IBOutlet UILabel *Timer;
    IBOutlet UIButton *Answer1;
    IBOutlet UIButton *Answer2;
    IBOutlet UIButton *Answer3;
    IBOutlet UIButton *Answer4;
    IBOutlet UIButton *NextCategory;
    IBOutlet UIButton *Exit;

    IBOutlet UIImageView *Result;
    
    NSTimer *TimerLeft;
    
}

-(IBAction)Answer1:(id)sender;
-(IBAction)Answer2:(id)sender;
-(IBAction)Answer3:(id)sender;
-(IBAction)Answer4:(id)sender;
-(void)Sports;
-(void)Movies;
-(void)Music;
-(void)Games;
-(void)Geography;
-(void)History;
-(void)CheckAnswer;
-(void)TimerCountDown;


@end
