//
//  Game.m
//  Pick Up Sticks
//
//  Created by Todd Duberstein on 6/26/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(void)timerRun{
    
    CountDown = CountDown - 1;
    TimeTotal.text = [NSString stringWithFormat:@"%i", CountDown];
    
    if (CountDown < 1) {
        [GameTimer invalidate];
        [self TimeUp];
    }
    
}
-(IBAction)StickGreen1:(id)sender{
    if (StickG1 == YES) {
        StickGreen1.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickG1 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickGreen2:(id)sender{
    
    if (StickG2 == YES) {
        StickGreen2.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickG2 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickGreen3:(id)sender{
    
    if (StickG3 == YES) {
        StickGreen3.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickG3 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickGreen4:(id)sender{
    
    if (StickG4 == YES) {
        StickGreen4.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickG4 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickGreen5:(id)sender{
    
    if (StickG5 == YES) {
        StickGreen5.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickG5 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickGreen6:(id)sender{
    
    if (StickG6 == YES) {
        StickGreen6.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickG6 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickGreen7:(id)sender{
    
    if (StickG7 == YES) {
        StickGreen7.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickG7 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickGreen8:(id)sender{
    
    if (StickG8 == YES) {
        StickGreen8.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickG8 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickGreen9:(id)sender{
    
    if (StickG9 == YES) {
        StickGreen9.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickG9 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickGreen10:(id)sender{
    
    if (StickG10 == YES) {
        StickGreen10.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickG10 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickOrange1:(id)sender{
    
    if (StickO1 == YES) {
        StickOrange1.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickO1 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickOrange2:(id)sender{
    
    if (StickO2 == YES) {
        StickOrange2.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickO2 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickOrange3:(id)sender{

    if (StickO3 == YES) {
        StickOrange3.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickO3 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickOrange4:(id)sender{
    
    if (StickO4 == YES) {
        StickOrange4.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickO4 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickOrange5:(id)sender{
    
    if (StickO5 == YES) {
        StickOrange5.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickO5 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickOrange6:(id)sender{

    if (StickO6 == YES) {
        StickOrange6.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickO6 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickOrange7:(id)sender{
    
    if (StickO7 == YES) {
        StickOrange7.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickO7 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickOrange8:(id)sender{
    
    if (StickO8 == YES) {
        StickOrange8.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickO8 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickOrange9:(id)sender{
    
    if (StickO9 == YES) {
        StickOrange9.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickO9 = YES;
        [self PickUpStick];
    }
    
}
-(IBAction)StickOrange10:(id)sender{
    
    if (StickO10 == YES) {
        StickOrange10.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        AmountPickedUp = AmountPickedUp + 0;
        StickO10 = YES;
        [self PickUpStick];
    }
    
}

-(void)PlayerWins{
    
    StickGreen1.hidden = YES;
    StickGreen2.hidden = YES;
    StickGreen3.hidden = YES;
    StickGreen4.hidden = YES;
    StickGreen5.hidden = YES;
    StickGreen6.hidden = YES;
    StickGreen7.hidden = YES;
    StickGreen8.hidden = YES;
    StickGreen9.hidden = YES;
    StickGreen10.hidden = YES;
    StickOrange1.hidden = YES;
    StickOrange2.hidden = YES;
    StickOrange3.hidden = YES;
    StickOrange4.hidden = YES;
    StickOrange5.hidden = YES;
    StickOrange6.hidden = YES;
    StickOrange7.hidden = YES;
    StickOrange8.hidden = YES;
    StickOrange9.hidden = YES;
    StickOrange10.hidden = YES;
    StartGame.hidden = YES;
    Sticks.hidden = NO;
    Result.hidden = NO;
    Exit.hidden = NO;
    
    Result.text = [NSString stringWithFormat:@"You Win!"];
    
    [GameTimer invalidate];
    
}

-(void)PickUpStick{
    
    if (AmountPickedUp > 185) {
        [self PlayerWins];
    }

    
    if (StickG1 == YES) {
        StickGreen1.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
    }
    else{
        
        StickGreen1.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }

    if (StickG2 == YES) {
        StickGreen2.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickGreen2.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];

    }
 
    if (StickG3 == YES) {
        StickGreen3.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickGreen3.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickG4 == YES) {
        StickGreen4.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickGreen4.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickG5 == YES) {
        StickGreen5.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickGreen5.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickG6 == YES) {
        StickGreen6.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickGreen6.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickG7 == YES) {
        StickGreen7.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickGreen7.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    
    if (StickG8 == YES) {
        StickGreen8.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickGreen8.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickG9 == YES) {
        StickGreen9.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickGreen9.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickG10 == YES) {
        StickGreen10.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickGreen10.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickO1 == YES) {
        StickOrange1.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickOrange1.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickO2 == YES) {
        StickOrange2.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickOrange2.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickO3 == YES) {
        StickOrange3.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickOrange3.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickO4 == YES) {
        StickOrange4.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickOrange4.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickO5 == YES) {
        StickOrange5.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickOrange5.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickO6 == YES) {
        StickOrange6.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickOrange6.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickO7 == YES) {
        StickOrange7.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickOrange7.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickO8 == YES) {
        StickOrange8.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickOrange8.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickO9 == YES) {
        StickOrange9.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }
    else{
        
        StickOrange9.hidden = NO;
        AmountPickedUp = AmountPickedUp + 0;
        Sticks.text = [NSString stringWithFormat:@"%i", AmountPickedUp];
        
    }
    
    if (StickO10 == YES) {
        StickOrange10.hidden = YES;
        AmountPickedUp = AmountPickedUp + 1;
    }

    
    
}

-(void)TimeUp{
    
    StartGame.hidden = YES;
    StickGreen1.hidden = YES;
    StickGreen2.hidden = YES;
    StickGreen3.hidden = YES;
    StickGreen4.hidden = YES;
    StickGreen5.hidden = YES;
    StickGreen6.hidden = YES;
    StickGreen7.hidden = YES;
    StickGreen8.hidden = YES;
    StickGreen9.hidden = YES;
    StickGreen10.hidden = YES;
    StickOrange1.hidden = YES;
    StickOrange2.hidden = YES;
    StickOrange3.hidden = YES;
    StickOrange4.hidden = YES;
    StickOrange5.hidden = YES;
    StickOrange6.hidden = YES;
    StickOrange7.hidden = YES;
    StickOrange8.hidden = YES;
    StickOrange9.hidden = YES;
    StickOrange10.hidden = YES;
    TimeTotal.hidden = NO;
    Sticks.hidden = NO;
    Exit.hidden = NO;
    Result.hidden = NO;
    
    Result.text = [NSString stringWithFormat:@"Time's Up!"];
    
}

-(IBAction)StartGame:(id)sender{
    
    StartGame.hidden = YES;
    StickGreen1.hidden = NO;
    StickGreen2.hidden = NO;
    StickGreen3.hidden = NO;
    StickGreen4.hidden = NO;
    StickGreen5.hidden = NO;
    StickGreen6.hidden = NO;
    StickGreen7.hidden = NO;
    StickGreen8.hidden = NO;
    StickGreen9.hidden = NO;
    StickGreen10.hidden = NO;
    StickOrange1.hidden = NO;
    StickOrange2.hidden = NO;
    StickOrange3.hidden = NO;
    StickOrange4.hidden = NO;
    StickOrange5.hidden = NO;
    StickOrange6.hidden = NO;
    StickOrange7.hidden = NO;
    StickOrange8.hidden = NO;
    StickOrange9.hidden = NO;
    StickOrange10.hidden = NO;
    TimeTotal.hidden = NO;
    Sticks.hidden = NO;
    Result.hidden = YES;
    Exit.hidden = YES;
    
    CountDown = 10;
    
    TimeTotal.text = [NSString stringWithFormat:@"%i", CountDown];
    
    GameTimer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(timerRun) userInfo:nil repeats:YES];
    
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
    StartGame.hidden = NO;
    StickGreen1.hidden = YES;
    StickGreen2.hidden = YES;
    StickGreen3.hidden = YES;
    StickGreen4.hidden = YES;
    StickGreen5.hidden = YES;
    StickGreen6.hidden = YES;
    StickGreen7.hidden = YES;
    StickGreen8.hidden = YES;
    StickGreen9.hidden = YES;
    StickGreen10.hidden = YES;
    StickOrange1.hidden = YES;
    StickOrange2.hidden = YES;
    StickOrange3.hidden = YES;
    StickOrange4.hidden = YES;
    StickOrange5.hidden = YES;
    StickOrange6.hidden = YES;
    StickOrange7.hidden = YES;
    StickOrange8.hidden = YES;
    StickOrange9.hidden = YES;
    StickOrange10.hidden = YES;
    Result.hidden = YES;
    Sticks.hidden = NO;
    Exit.hidden = NO;
    
    AmountPickedUp = 0;
    CountDown = 10;
    
    Sticks.text = [NSString stringWithFormat:@"%i",  AmountPickedUp];
    TimeTotal.text = [NSString stringWithFormat:@"%i", CountDown];
    
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
