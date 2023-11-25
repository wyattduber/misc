//
//  Game.m
//  Fun Run
//
//  Created by Todd Duberstein on 8/6/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(void)Moving{
    
    [self Movement];
    
    Player.center = CGPointMake(Player.center.x + X, Player.center.y);
    
    Obstacle1.center = CGPointMake(Obstacle1.center.x - 1, Obstacle1.center.y);
    Obstacle2.center = CGPointMake(Obstacle2.center.x - 1, Obstacle2.center.y);
    Obstacle3.center = CGPointMake(Obstacle3.center.x - 1, Obstacle3.center.y);
    Obstacle4.center = CGPointMake(Obstacle4.center.x - 1, Obstacle4.center.y);
    
    if (Obstacle1.center.x < 0) {
        RandomObstaclePlaced = arc4random() %75;
        RandomObstaclePlaced = RandomObstaclePlaced + 110;
        Obstacle1.center = CGPointMake(510, RandomObstaclePlaced);
    }
    
    if (Obstacle2.center.x < 0) {
        RandomObstaclePlaced = arc4random() %75;
        RandomObstaclePlaced = RandomObstaclePlaced + 110;
        Obstacle2.center = CGPointMake(510, RandomObstaclePlaced);
    }
    
    if (Obstacle3.center.x < 0) {
        RandomObstaclePlaced = arc4random() %75;
        RandomObstaclePlaced = RandomObstaclePlaced + 110;
        Obstacle3.center = CGPointMake(510, RandomObstaclePlaced);
    }
    
    if (Obstacle4.center.x < 0) {
        RandomObstaclePlaced = arc4random() %75;
        RandomObstaclePlaced = RandomObstaclePlaced + 110;
        Obstacle4.center = CGPointMake(510, RandomObstaclePlaced);
    }
    
}

-(void)Movement{
    
    if (CGRectIntersectsRect(Player.frame, Obstacle1.frame)) {
        [self Hit];
    }
    else {
        
    }
    
    if (CGRectIntersectsRect(Player.frame, Obstacle2.frame)) {
        [self Hit];
    }
    else {
        
    }
    
    if (CGRectIntersectsRect(Player.frame, Obstacle3.frame)) {
        [self Hit];
    }
    else {
        
    }
    
    if (CGRectIntersectsRect(Player.frame, Obstacle4.frame)) {
        [self Hit];
    }
    else {
        
    }
    
}

-(void)Hit{
    
    [Movement invalidate];
    
}

-(void)Win{
    
    Obstacle1.hidden = YES;
    Obstacle2.hidden = YES;
    Obstacle3.hidden = YES;
    Obstacle4.hidden = YES;
    Player.hidden = YES;
    FinishLine1.hidden = YES;
    FinishLine2.hidden = YES;
    FinishLine3.hidden = YES;
    
    Result.text = [NSString stringWithFormat:@"You Win!"];
    
}

-(void)TimerDown{
    
    Seconds = Seconds - 0.01;
    Time.text = [NSString stringWithFormat:@"Time: %.2f", Seconds];
    
}

-(void)ObstaclePlaced{
    
    Obstacle1.hidden = NO;
    Obstacle2.hidden = NO;
    Obstacle3.hidden = NO;
    Obstacle4.hidden = NO;
    Player.hidden = NO;
    Result.hidden = YES;
    
    Obstacle1.center = CGPointMake(Obstacle1.center.x + 30, Obstacle1.center.y + 0);
    
    
}

-(IBAction)StartGame:(id)sender{
    
    Obstacle1.hidden = NO;
    Obstacle2.hidden = NO;
    Obstacle3.hidden = NO;
    Obstacle4.hidden = NO;
    Start.hidden = YES;
    Player.hidden = NO;
    Player2.hidden = NO;
    Player3.hidden = NO;
    Player4.hidden = YES;
    
    
    Timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(TimerDown) userInfo:nil repeats:YES];
    
    Movement = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(Moving) userInfo:nil repeats:YES];
    
    [self ObstaclePlaced];
 
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    Player.center = CGPointMake(Player.center.x + 0, Player.center.y + 65);
    
    if (Player.center.y > 140) {
        Player.center = CGPointMake(Player.center.x + 0, Player.center.y - 65);
    }
    
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
    Obstacle1.hidden = NO;
    Obstacle2.hidden = NO;
    Obstacle3.hidden = NO;
    Obstacle4.hidden = NO;
    Player.hidden = NO;
    Result.hidden = YES;
    Time.hidden = NO;
    Start.hidden = NO;
    
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
