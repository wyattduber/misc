//
//  Game.m
//  Snake Game for iPhone
//
//  Created by Todd Duberstein on 6/29/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(void)SnakeMoving{
    
    SnakeBlock5.center = CGPointMake(SnakeBlock4.center.x, SnakeBlock4.center.y);
    SnakeBlock4.center = CGPointMake(SnakeBlock3.center.x, SnakeBlock3.center.y);
    SnakeBlock3.center = CGPointMake(SnakeBlock2.center.x, SnakeBlock2.center.y);
    SnakeBlock1.center = CGPointMake(SnakeBlock1.center.x, SnakeBlock3.center.y);
    SnakeBlock1.center = CGPointMake(SnakeBlock1.center.x + SnakeX, SnakeBlock1.center.y + SnakeY);
    
    
    
}

-(IBAction)Start:(id)sender{
    
    StartGame.hidden = YES;
    
    SnakeMovement = [NSTimer scheduledTimerWithTimeInterval:0.3 target:self selector:@selector(SnakeMoving) userInfo:nil repeats:YES];
    
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
    SnakeX = 30;
    SnakeY = 0;
    
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
