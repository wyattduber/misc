//
//  Game.m
//  White Tiles Tutorial
//
//  Created by Matt Heaney on 23/06/2014.
//  Copyright (c) 2014 Matt Heaney. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(void)GameOver{
    
    [Timer invalidate];
    
    Row1Tile1.hidden = YES;
    Row1Tile2.hidden = YES;
    Row1Tile3.hidden = YES;
    Row1Tile4.hidden = YES;
    Row2Tile1.hidden = YES;
    Row2Tile2.hidden = YES;
    Row2Tile3.hidden = YES;
    Row2Tile4.hidden = YES;
    Row3Tile1.hidden = YES;
    Row3Tile2.hidden = YES;
    Row3Tile3.hidden = YES;
    Row3Tile4.hidden = YES;
    Row4Tile1.hidden = YES;
    Row4Tile2.hidden = YES;
    Row4Tile3.hidden = YES;
    Row4Tile4.hidden = YES;
    Row5Tile1.hidden = YES;
    Row5Tile2.hidden = YES;
    Row5Tile3.hidden = YES;
    Row5Tile4.hidden = YES;
    
    Button1.hidden = YES;
    Button2.hidden = YES;
    Button3.hidden = YES;
    Button4.hidden = YES;
    
    TimeLabel.hidden = YES;
    
    Exit.hidden = NO;
    
    if (ScoreNumber > HighScoreNumber) {
        [[NSUserDefaults standardUserDefaults] setInteger:ScoreNumber forKey:@"HighScoreSaved"];
    }

}

-(void)Score{
    
    ScoreNumber = ScoreNumber + 1;
    ScoreLabel.text = [NSString stringWithFormat:@"Score: %i", ScoreNumber];
    
    if (ScoreNumber % 50 == 0) {
        TimeNumber = 10;
    }
    
    
}

-(void)TimerCountDown{
    
    TimeNumber = TimeNumber - 0.01;
    TimeLabel.text = [NSString stringWithFormat:@"Time: %.2f", TimeNumber];
    
    if (TimeNumber < 0) {
        [self GameOver];
    }

    
}

-(void)TileMoveDown{
    
    [self Score];
    
    Row1Tile1.center = CGPointMake(Row1Tile1.center.x, Row1Tile1.center.y + 141);
    Row1Tile2.center = CGPointMake(Row1Tile2.center.x, Row1Tile2.center.y + 141);
    Row1Tile3.center = CGPointMake(Row1Tile3.center.x, Row1Tile3.center.y + 141);
    Row1Tile4.center = CGPointMake(Row1Tile4.center.x, Row1Tile4.center.y + 141);
    Row2Tile1.center = CGPointMake(Row2Tile1.center.x, Row2Tile1.center.y + 141);
    Row2Tile2.center = CGPointMake(Row2Tile2.center.x, Row2Tile2.center.y + 141);
    Row2Tile3.center = CGPointMake(Row2Tile3.center.x, Row2Tile3.center.y + 141);
    Row2Tile4.center = CGPointMake(Row2Tile4.center.x, Row2Tile4.center.y + 141);
    Row3Tile1.center = CGPointMake(Row3Tile1.center.x, Row3Tile1.center.y + 141);
    Row3Tile2.center = CGPointMake(Row3Tile2.center.x, Row3Tile2.center.y + 141);
    Row3Tile3.center = CGPointMake(Row3Tile3.center.x, Row3Tile3.center.y + 141);
    Row3Tile4.center = CGPointMake(Row3Tile4.center.x, Row3Tile4.center.y + 141);
    Row4Tile1.center = CGPointMake(Row4Tile1.center.x, Row4Tile1.center.y + 141);
    Row4Tile2.center = CGPointMake(Row4Tile2.center.x, Row4Tile2.center.y + 141);
    Row4Tile3.center = CGPointMake(Row4Tile3.center.x, Row4Tile3.center.y + 141);
    Row4Tile4.center = CGPointMake(Row4Tile4.center.x, Row4Tile4.center.y + 141);
    Row5Tile1.center = CGPointMake(Row5Tile1.center.x, Row5Tile1.center.y + 141);
    Row5Tile2.center = CGPointMake(Row5Tile2.center.x, Row5Tile2.center.y + 141);
    Row5Tile3.center = CGPointMake(Row5Tile3.center.x, Row5Tile3.center.y + 141);
    Row5Tile4.center = CGPointMake(Row5Tile4.center.x, Row5Tile4.center.y + 141);
    
    if (Row1Tile1.center.y > 500) {
        Row1Tile1.center = CGPointMake(40, -66);
        Row1Tile2.center = CGPointMake(120, -66);
        Row1Tile3.center = CGPointMake(200, -66);
        Row1Tile4.center = CGPointMake(280, -66);
        [self PlaceRow1BlackTile];
    }
    
    if (Row2Tile1.center.y > 500) {
        Row2Tile1.center = CGPointMake(40, -66);
        Row2Tile2.center = CGPointMake(120, -66);
        Row2Tile3.center = CGPointMake(200, -66);
        Row2Tile4.center = CGPointMake(280, -66);
        [self PlaceRow2BlackTile];
    }
    
    if (Row3Tile1.center.y > 500) {
        Row3Tile1.center = CGPointMake(40, -66);
        Row3Tile2.center = CGPointMake(120, -66);
        Row3Tile3.center = CGPointMake(200, -66);
        Row3Tile4.center = CGPointMake(280, -66);
        [self PlaceRow3BlackTile];
    }
    
    if (Row4Tile1.center.y > 500) {
        Row4Tile1.center = CGPointMake(40, -66);
        Row4Tile2.center = CGPointMake(120, -66);
        Row4Tile3.center = CGPointMake(200, -66);
        Row4Tile4.center = CGPointMake(280, -66);
        [self PlaceRow4BlackTile];
    }
    
    if (Row5Tile1.center.y > 500) {
        Row5Tile1.center = CGPointMake(40, -66);
        Row5Tile2.center = CGPointMake(120, -66);
        Row5Tile3.center = CGPointMake(200, -66);
        Row5Tile4.center = CGPointMake(280, -66);
        [self PlaceRow5BlackTile];
    }
    
    
    RowNumber = RowNumber + 1;
    if (RowNumber == 6) {
        RowNumber = 1;
    }
    
    
}

-(IBAction)RowDown1:(id)sender{
    
   AudioServicesPlaySystemSound(PlaySoundID1);
    
    switch (RowNumber) {
        case 1:
            if (Row1BlackTile == 1) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 2:
            if (Row2BlackTile == 1) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 3:
            if (Row3BlackTile == 1) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 4:
            if (Row4BlackTile == 1) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 5:
            if (Row5BlackTile == 1) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        default:
            break;
    }
    
}

-(IBAction)RowDown2:(id)sender{
    
    AudioServicesPlaySystemSound(PlaySoundID2);
    
    switch (RowNumber) {
        case 1:
            if (Row1BlackTile == 2) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 2:
            if (Row2BlackTile == 2) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 3:
            if (Row3BlackTile == 2) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 4:
            if (Row4BlackTile == 2) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 5:
            if (Row5BlackTile == 2) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        default:
            break;
    }
    
}

-(IBAction)RowDown3:(id)sender{
    
    AudioServicesPlaySystemSound(PlaySoundID3);
    
    switch (RowNumber) {
        case 1:
            if (Row1BlackTile == 3) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 2:
            if (Row2BlackTile == 3) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 3:
            if (Row3BlackTile == 3) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 4:
            if (Row4BlackTile == 3) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 5:
            if (Row5BlackTile == 3) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        default:
            break;
    }
    
}

-(IBAction)RowDown4:(id)sender{
    
    AudioServicesPlaySystemSound(PlaySoundID4);
    
    switch (RowNumber) {
        case 1:
            if (Row1BlackTile == 4) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 2:
            if (Row2BlackTile == 4) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 3:
            if (Row3BlackTile == 4) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 4:
            if (Row4BlackTile == 4) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        case 5:
            if (Row5BlackTile == 4) {
                [self TileMoveDown];
            }
            else{
                [self GameOver];
            }
            break;
        default:
            break;
    }

    
    
}


-(void)PlaceRow1BlackTile{
    
    Row1Tile1.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row1Tile2.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row1Tile3.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row1Tile4.image = [UIImage imageNamed:@"WhiteTile.png"];
    
    Row1BlackTile = arc4random() %4;
    Row1BlackTile = Row1BlackTile + 1;
    
    switch (Row1BlackTile) {
        case 1:
            Row1Tile1.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 2:
            Row1Tile2.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 3:
            Row1Tile3.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 4:
            Row1Tile4.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        default:
            break;
    }
    
}

-(void)PlaceRow2BlackTile{
    
    Row2Tile1.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row2Tile2.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row2Tile3.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row2Tile4.image = [UIImage imageNamed:@"WhiteTile.png"];
    
    Row2BlackTile = arc4random() %4;
    Row2BlackTile = Row2BlackTile + 1;
    
    switch (Row2BlackTile) {
        case 1:
            Row2Tile1.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 2:
            Row2Tile2.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 3:
            Row2Tile3.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 4:
            Row2Tile4.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        default:
            break;
    }
    
}

-(void)PlaceRow3BlackTile{
    
    Row3Tile1.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row3Tile2.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row3Tile3.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row3Tile4.image = [UIImage imageNamed:@"WhiteTile.png"];
    
    Row3BlackTile = arc4random() %4;
    Row3BlackTile = Row3BlackTile + 1;
    
    switch (Row3BlackTile) {
        case 1:
            Row3Tile1.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 2:
            Row3Tile2.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 3:
            Row3Tile3.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 4:
            Row3Tile4.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        default:
            break;
    }
    
}

-(void)PlaceRow4BlackTile{
    
    Row4Tile1.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row4Tile2.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row4Tile3.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row4Tile4.image = [UIImage imageNamed:@"WhiteTile.png"];
    
    Row4BlackTile = arc4random() %4;
    Row4BlackTile = Row4BlackTile + 1;
    
    switch (Row4BlackTile) {
        case 1:
            Row4Tile1.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 2:
            Row4Tile2.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 3:
            Row4Tile3.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 4:
            Row4Tile4.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        default:
            break;
    }
    
}


-(void)PlaceRow5BlackTile{
    
    Row5Tile1.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row5Tile2.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row5Tile3.image = [UIImage imageNamed:@"WhiteTile.png"];
    Row5Tile4.image = [UIImage imageNamed:@"WhiteTile.png"];
    
    Row5BlackTile = arc4random() %4;
    Row5BlackTile = Row5BlackTile + 1;
    
    switch (Row5BlackTile) {
        case 1:
            Row5Tile1.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 2:
            Row5Tile2.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 3:
            Row5Tile3.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        case 4:
            Row5Tile4.image = [UIImage imageNamed:@"BlackTile.png"];
            break;
        default:
            break;
    }
    
}


-(IBAction)StartGame:(id)sender{

    Timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(TimerCountDown) userInfo:nil repeats:YES];
    
    Button1.hidden = NO;
    Button2.hidden = NO;
    Button3.hidden = NO;
    Button4.hidden = NO;
    
    RowNumber = 1;
    
    [self PlaceRow1BlackTile];
    [self PlaceRow2BlackTile];
    [self PlaceRow3BlackTile];
    [self PlaceRow4BlackTile];
    [self PlaceRow5BlackTile];
    
    Row1Tile1.center = CGPointMake(40, 498);
    Row1Tile2.center = CGPointMake(120, 498);
    Row1Tile3.center = CGPointMake(200, 498);
    Row1Tile4.center = CGPointMake(280, 498);
    
    Row2Tile1.center = CGPointMake(40, 357);
    Row2Tile2.center = CGPointMake(120, 357);
    Row2Tile3.center = CGPointMake(200, 357);
    Row2Tile4.center = CGPointMake(280, 357);
    
    Row3Tile1.center = CGPointMake(40, 216);
    Row3Tile2.center = CGPointMake(120, 216);
    Row3Tile3.center = CGPointMake(200, 216);
    Row3Tile4.center = CGPointMake(280, 216);
    
    Row4Tile1.center = CGPointMake(40, 75);
    Row4Tile2.center = CGPointMake(120, 75);
    Row4Tile3.center = CGPointMake(200, 75);
    Row4Tile4.center = CGPointMake(280, 75);
    
    Row5Tile1.center = CGPointMake(40, -66);
    Row5Tile2.center = CGPointMake(120, -66);
    Row5Tile3.center = CGPointMake(200, -66);
    Row5Tile4.center = CGPointMake(280, -66);
    
    Row1Tile1.hidden = NO;
    Row1Tile2.hidden = NO;
    Row1Tile3.hidden = NO;
    Row1Tile4.hidden = NO;
    Row2Tile1.hidden = NO;
    Row2Tile2.hidden = NO;
    Row2Tile3.hidden = NO;
    Row2Tile4.hidden = NO;
    Row3Tile1.hidden = NO;
    Row3Tile2.hidden = NO;
    Row3Tile3.hidden = NO;
    Row3Tile4.hidden = NO;
    Row4Tile1.hidden = NO;
    Row4Tile2.hidden = NO;
    Row4Tile3.hidden = NO;
    Row4Tile4.hidden = NO;
    Row5Tile1.hidden = NO;
    Row5Tile2.hidden = NO;
    Row5Tile3.hidden = NO;
    Row5Tile4.hidden = NO;
    
    Start.hidden = YES;
    
    
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
    NSURL *SoundURL1 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"68445__pinkyfinger__piano-f" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL1, &PlaySoundID1);
    
    NSURL *SoundURL2 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"68440__pinkyfinger__piano-c" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL2, &PlaySoundID2);
    
    NSURL *SoundURL3 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"68447__pinkyfinger__piano-g" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL3, &PlaySoundID3);
    
    NSURL *SoundURL4 = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"68437__pinkyfinger__piano-a" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef)SoundURL4, &PlaySoundID4);
    
    HighScoreNumber = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    
    Exit.hidden = YES;
    
    ScoreNumber = 0;
    TimeNumber = 15;
    
    Button1.hidden = YES;
    Button2.hidden = YES;
    Button3.hidden = YES;
    Button4.hidden = YES;
    
    Row1Tile1.hidden = YES;
    Row1Tile2.hidden = YES;
    Row1Tile3.hidden = YES;
    Row1Tile4.hidden = YES;
    Row2Tile1.hidden = YES;
    Row2Tile2.hidden = YES;
    Row2Tile3.hidden = YES;
    Row2Tile4.hidden = YES;
    Row3Tile1.hidden = YES;
    Row3Tile2.hidden = YES;
    Row3Tile3.hidden = YES;
    Row3Tile4.hidden = YES;
    Row4Tile1.hidden = YES;
    Row4Tile2.hidden = YES;
    Row4Tile3.hidden = YES;
    Row4Tile4.hidden = YES;
    Row5Tile1.hidden = YES;
    Row5Tile2.hidden = YES;
    Row5Tile3.hidden = YES;
    Row5Tile4.hidden = YES;
    
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