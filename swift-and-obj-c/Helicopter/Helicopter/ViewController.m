//
//  ViewController.m
//  Helicopter
//
//  Created by Todd Duberstein on 6/7/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)HeliNoise{
    
    AudioServicesPlaySystemSound(Helicopter);
    
}

-(void)Collision{
    
    
    if (CGRectIntersectsRect(Heli.frame, Obstacle.frame)) {
        [self EndGame];
    }
    
    if (CGRectIntersectsRect(Heli.frame, Obstacle2.frame)) {
        [self EndGame];
    }
    
    
    if (CGRectIntersectsRect(Heli.frame, Bottom1.frame)) {
        [self EndGame];
    }

    
    if (CGRectIntersectsRect(Heli.frame, Bottom2.frame)) {
        [self EndGame];
    }

    
    if (CGRectIntersectsRect(Heli.frame, Bottom3.frame)) {
        [self EndGame];
    }

    
    if (CGRectIntersectsRect(Heli.frame, Bottom4.frame)) {
        [self EndGame];
    }

    
    if (CGRectIntersectsRect(Heli.frame, Bottom5.frame)) {
        [self EndGame];
    }

    
    if (CGRectIntersectsRect(Heli.frame, Bottom6.frame)) {
        [self EndGame];
    }

    
    if (CGRectIntersectsRect(Heli.frame, Bottom7.frame)) {
        [self EndGame];
    }

    if (CGRectIntersectsRect(Heli.frame, Top1.frame)) {
        [self EndGame];
    }
    
    if (CGRectIntersectsRect(Heli.frame, Top2.frame)) {
        [self EndGame];
    }

    if (CGRectIntersectsRect(Heli.frame, Top3.frame)) {
        [self EndGame];
    }

    if (CGRectIntersectsRect(Heli.frame, Top4.frame)) {
        [self EndGame];
    }

    if (CGRectIntersectsRect(Heli.frame, Top5.frame)) {
        [self EndGame];
    }

    if (CGRectIntersectsRect(Heli.frame, Top6.frame)) {
        [self EndGame];
    }

    if (CGRectIntersectsRect(Heli.frame, Top7.frame)) {
        [self EndGame];
    }

    if (Heli.center.y > 250) {
        [self EndGame];
    }
    
    if (Heli.center.y < 29) {
        [self EndGame];
    }
    
}



-(void)EndGame{
    
    if (ScoreNumber > HighScore) {
        HighScore = ScoreNumber;
        [[NSUserDefaults standardUserDefaults] setInteger:HighScore forKey:@"HighScoreSaved"];
    }
    
    
    Heli.hidden = NO;
    
    Heli.image = [UIImage imageNamed:@"Explosion.png"];
    
    [timer invalidate];
    [Scorer invalidate];
    [HelicopterNoises invalidate];
    
    [self performSelector:@selector(NewGame) withObject:nil afterDelay:10];
    
    AudioServicesPlaySystemSound(Explosion);
    
}

-(void)NewGame{
    
    
    Bottom1.hidden = YES;
    Bottom2.hidden = YES;
    Bottom3.hidden = YES;
    Bottom4.hidden = YES;
    Bottom5.hidden = YES;
    Bottom6.hidden = YES;
    Bottom7.hidden = YES;
    Top1.hidden = YES;
    Top2.hidden = YES;
    Top3.hidden = YES;
    Top4.hidden = YES;
    Top5.hidden = YES;
    Top6.hidden = YES;
    Top7.hidden = YES;
    Obstacle2.hidden = YES;
    Obstacle2.hidden = YES;
    
    Intro1.hidden = NO;
    Intro2.hidden = NO;
    Intro3.hidden = NO;
    
    Heli.hidden = NO;
    Heli.center = CGPointMake(20, 139);
    Heli.image = [UIImage imageNamed:@"1004094_613482738695959_1178012209_n.png"];
    
    Start = YES;
    ScoreNumber = 0;
    Score.text = [NSString stringWithFormat:@"Score: 0"];
    Intro3.text = [NSString stringWithFormat:@"High Score: %i", HighScore];
    
    
}








-(void)HeliMove{
    
    [self Collision];
    
    Heli.center = CGPointMake(Heli.center.x, Heli.center.y + Y);
    
    Obstacle.center = CGPointMake(Obstacle.center.x - 1, Obstacle.center.y);
    Obstacle2.center = CGPointMake(Obstacle2.center.x - 1, Obstacle2.center.y);
    Bottom1.center = CGPointMake(Bottom1.center.x - 1, Bottom1.center.y);
    Bottom2.center = CGPointMake(Bottom2.center.x - 1, Bottom2.center.y);
    Bottom3.center = CGPointMake(Bottom3.center.x - 1, Bottom3.center.y);
    Bottom4.center = CGPointMake(Bottom4.center.x - 1, Bottom4.center.y);
    Bottom5.center = CGPointMake(Bottom5.center.x - 1, Bottom5.center.y);
    Bottom6.center = CGPointMake(Bottom6.center.x - 1, Bottom6.center.y);
    Bottom7.center = CGPointMake(Bottom7.center.x - 1, Bottom7.center.y);
    Top1.center = CGPointMake(Top1.center.x - 1, Top1.center.y);
    Top2.center = CGPointMake(Top2.center.x - 1, Top2.center.y);
    Top3.center = CGPointMake(Top3.center.x - 1, Top3.center.y);
    Top4.center = CGPointMake(Top4.center.x - 1, Top4.center.y);
    Top5.center = CGPointMake(Top5.center.x - 1, Top5.center.y);
    Top6.center = CGPointMake(Top6.center.x - 1, Top6.center.y);
    Top7.center = CGPointMake(Top7.center.x - 1, Top7.center.y);
    
    
    
    if (Obstacle.center.x < 0) {
        RandomPosition = arc4random() %75;
        RandomPosition = RandomPosition + 110;
        Obstacle.center = CGPointMake(510, RandomPosition);
        
        
    }
    
    if (Obstacle2.center.x < 0) {
        RandomPosition = arc4random() %75;
        RandomPosition = RandomPosition + 110;
        Obstacle2.center = CGPointMake(510, RandomPosition);
        
        
    }
    
    if (Top1.center.x < -30) {
        RandomPosition = arc4random() %55;
        Top1.center = CGPointMake(510, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom1.center = CGPointMake(510, RandomPosition);
        
    }
    
    if (Top2.center.x < -30) {
        RandomPosition = arc4random() %55;
        Top2.center = CGPointMake(510, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom2.center = CGPointMake(510, RandomPosition);
        
    }

    if (Top3.center.x < -30) {
        RandomPosition = arc4random() %55;
        Top3.center = CGPointMake(510, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom3.center = CGPointMake(510, RandomPosition);
        
    }

    if (Top4.center.x < -30) {
        RandomPosition = arc4random() %55;
        Top4.center = CGPointMake(510, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom4.center = CGPointMake(510, RandomPosition);
        
    }

    if (Top5.center.x < -30) {
        RandomPosition = arc4random() %55;
        Top5.center = CGPointMake(510, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom5.center = CGPointMake(510, RandomPosition);
        
    }

    if (Top6.center.x < -30) {
        RandomPosition = arc4random() %55;
        Top6.center = CGPointMake(510, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom6.center = CGPointMake(510, RandomPosition);
        
    }

    if (Top7.center.x < -30) {
        RandomPosition = arc4random() %55;
        Top7.center = CGPointMake(510, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom7.center = CGPointMake(510, RandomPosition);
        
    }

    

    
    
}




-(void)Scoring{
    
    ScoreNumber = ScoreNumber + 1;
    Score.text = [NSString stringWithFormat:@"Score: %i", ScoreNumber];
    
}




-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    
    if (Start == YES) {
        
        Intro1.hidden = YES;
        Intro2.hidden = YES;
        Intro3.hidden = YES;
        
        timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(HeliMove) userInfo:nil repeats:YES];
        
        Scorer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(Scoring) userInfo:nil repeats:YES];
        
        HelicopterNoises = [NSTimer scheduledTimerWithTimeInterval:8.0 target:self selector:@selector(HeliNoise) userInfo:nil repeats:YES];
        
        Start = NO;
        
        Bottom1.hidden = NO;
        Bottom2.hidden = NO;
        Bottom3.hidden = NO;
        Bottom4.hidden = NO;
        Bottom5.hidden = NO;
        Bottom6.hidden = NO;
        Bottom7.hidden = NO;
        Top1.hidden = NO;
        Top2.hidden = NO;
        Top3.hidden = NO;
        Top4.hidden = NO;
        Top5.hidden = NO;
        Top6.hidden = NO;
        Top7.hidden = NO;
        Obstacle.hidden = NO;
        Obstacle2.hidden = NO;
        
        
        RandomPosition = arc4random() %75;
        RandomPosition = RandomPosition + 110;
        Obstacle.center = CGPointMake(570, RandomPosition);
        
        RandomPosition = arc4random() %75;
        RandomPosition = RandomPosition + 110;
        Obstacle2.center = CGPointMake(855, RandomPosition);

        RandomPosition = arc4random() %55;
        Top1.center = CGPointMake(560, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom1.center = CGPointMake(560, RandomPosition);
        
        RandomPosition = arc4random() %55;
        Top2.center = CGPointMake(640, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom3.center = CGPointMake(640, RandomPosition);

        RandomPosition = arc4random() %55;
        Top3.center = CGPointMake(720, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom3.center = CGPointMake(720, RandomPosition);

        RandomPosition = arc4random() %55;
        Top4.center = CGPointMake(800, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom4.center = CGPointMake(800, RandomPosition);

        RandomPosition = arc4random() %55;
        Top5.center = CGPointMake(880, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom5.center = CGPointMake(880, RandomPosition);

        RandomPosition = arc4random() %55;
        Top6.center = CGPointMake(960, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom6.center = CGPointMake(960, RandomPosition);

        RandomPosition = arc4random() %55;
        Top7.center = CGPointMake(1040, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom7.center = CGPointMake(1040, RandomPosition);
        
        
        
  }
    
    Y = -1;
    Heli.image = [UIImage imageNamed:@"1004094_613482738695959_1178012209_n.png"];
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    Y = 1;
    Heli.image = [UIImage imageNamed:@"969117_613482742029292_1256699407_n.png"];
    
}





- (void)viewDidLoad
{
    
    NSURL *SoundURL1 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Explosion" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL1, &Explosion);
    
    NSURL *SoundURL2 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Helicopter" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL2, &Helicopter);
    
    Start = YES;
    Bottom1.hidden = YES;
    Bottom2.hidden = YES;
    Bottom3.hidden = YES;
    Bottom4.hidden = YES;
    Bottom5.hidden = YES;
    Bottom6.hidden = YES;
    Bottom7.hidden = YES;
    Top1.hidden = YES;
    Top2.hidden = YES;
    Top3.hidden = YES;
    Top4.hidden = YES;
    Top5.hidden = YES;
    Top6.hidden = YES;
    Top7.hidden = YES;
    Obstacle.hidden = YES;
    Obstacle2.hidden = YES;
    
    
    HighScore = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    Intro3.text = [NSString stringWithFormat:@"High Score: %i", HighScore];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
