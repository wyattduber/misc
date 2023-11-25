//
//  Game.m
//  Guess the number
//
//  Created by Todd Duberstein on 7/17/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(IBAction)Start:(id)sender{
    
    NumberRandom.hidden = YES;
    Answer1.hidden = NO;
    Answer2.hidden = NO;
    Answer3.hidden = NO;
    Answer4.hidden = NO;
    Answer5.hidden = NO;
    
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;
    Answer5Correct = NO;
    
    TimeDown = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(CountDownSeconds) userInfo:nil repeats:YES];
    Seconds = 15;
    
    {
        
        RandomNumber = arc4random() %5;
        
        switch (RandomNumber) {
            case 1:
                [self One];
                Answer1Correct = YES;
                break;
            case 2:
                [self Two];
                Answer2Correct = YES;
                break;
            case 3:
                [self Three];
                Answer3Correct = YES;
                break;
            case 4:
                [self Four];
                Answer4Correct = YES;
                break;
            case 5:
                [self Five];
                Answer5Correct = YES;
                break;
                
            default:
                break;
        }
    
}
}

-(void)CountDownSeconds{
    
    Seconds = Seconds - 0.01;
    Timer.text = [NSString stringWithFormat:@"Time: %.2f", Seconds];
    
    if (Seconds == 0) {
        [self WrongAnswer];
        [TimeDown invalidate];
    }
    
}

-(void)One{
    
    Answer1Correct = YES;
    
    NumberRandom.text = [NSString stringWithFormat:@"%i", RandomNumber];
    
    [TimeDown invalidate];
    
    if (Number1Answer == RandomNumber) {
        [self CorrectAnswer];
        
    }
    else{
        [self WrongAnswer];
    }
    
}

-(void)Two{
    
    Answer2Correct = YES;
    
    NumberRandom.text = [NSString stringWithFormat:@"%i", RandomNumber];
    
    [TimeDown invalidate];
    
    if (Number2Answer == RandomNumber) {
        [self CorrectAnswer];
        
    }
    else{
        [self WrongAnswer];
    }
    
}

-(void)Three{
    
    Answer3Correct = YES;
    
    NumberRandom.text = [NSString stringWithFormat:@"%i", RandomNumber];
    
    [TimeDown invalidate];
    
    if (Number3Answer == RandomNumber) {
        [self CorrectAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
}

-(void)Four{
    
    Answer4Correct = YES;
    
    NumberRandom.text = [NSString stringWithFormat:@"%i", RandomNumber];
    
    [TimeDown invalidate];
    
    if (Number4Answer == RandomNumber) {
        [self CorrectAnswer];
        
    }
    else{
        [self WrongAnswer];
    }
    
}

-(void)Five{
    
    Answer5Correct = YES;
    
    NumberRandom.text = [NSString stringWithFormat:@"%i", RandomNumber];
    
    [TimeDown invalidate];
    
    if (Number5Answer == RandomNumber) {
        [self CorrectAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
}

-(void)AnswerReveal{
    
    Result.hidden = YES;
    NumberRandom.hidden = NO;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    Answer5.hidden = YES;
    Exit.hidden = NO;
    
    if (RandomNumber > 5) {
        RandomNumber = 0;
    }
    
}

-(void)WrongAnswer{
    
    Result.text = [NSString stringWithFormat:@"You Lose!"];
    
    Result.hidden = NO;
    
    [self performSelector:@selector(AnswerReveal) withObject:nil afterDelay:3];
    
    Exit.hidden = YES;
    
}

-(void)CorrectAnswer{
    
    Result.text = [NSString stringWithFormat:@"You Win!"];
    
    Result.hidden = NO;
    
    [self performSelector:@selector(AnswerReveal) withObject:nil afterDelay:3];
    
    Exit.hidden = YES;
    
}

-(IBAction)Answer1:(id)sender{
    
    Number1Answer = Number1Answer + 1;
    
    if (Number1Answer > 1) {
        Number1Answer = 1;
    }

    if (Answer1Correct == YES) {
        [self CorrectAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
    NumberRandom.hidden = YES;
    Result.hidden = YES;
}

-(IBAction)Answer2:(id)sender{
    
    Number2Answer = Number2Answer + 2;
    
    if (Number2Answer > 2) {
        Number2Answer = 2;
    }
    if (Answer2Correct == YES) {
        [self CorrectAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
    NumberRandom.hidden = YES;
    Result.hidden = YES;
 
}

-(IBAction)Answer3:(id)sender{
    
    Number3Answer = Number3Answer + 3;
    
    if (Number3Answer > 3) {
        Number3Answer = 3;
    }
    
    if (Answer3Correct == YES) {
        [self CorrectAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
    [self AnswerReveal];

    NumberRandom.hidden = YES;
    Result.hidden = YES;
}

-(IBAction)Answer4:(id)sender{
    
    Number4Answer = Number4Answer + 4;
    
    if (Number4Answer > 4) {
        Number4Answer = 4;
    }
    
    if (Answer4Correct == YES) {
        [self CorrectAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
    [self AnswerReveal];

    NumberRandom.hidden = YES;
    Result.hidden = YES;
    
}

-(IBAction)Answer5:(id)sender{
    
    Number5Answer = Number5Answer + 5;
    
    if (Number5Answer > 5) {
        Number5Answer = 5;
    }
    
    if (Answer5Correct == YES) {
        [self CorrectAnswer];
    }
    else{
        [self WrongAnswer];
    }
    
   [self AnswerReveal];
    
    NumberRandom.hidden = YES;
    Result.hidden = YES;
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    Answer5.hidden = YES;
    NumberRandom.hidden = YES;
    StartGame.hidden = NO;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
