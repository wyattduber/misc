//
//  Game.h
//  Snake Game for iPhone
//
//  Created by Todd Duberstein on 6/25/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>

int SnakeX;
int SnakeY;

@interface Game : UIViewController
{
    
    IBOutlet UIImageView *SnakeBlock1;
    IBOutlet UIImageView *SnakeBlock2;
    IBOutlet UIImageView *SnakeBlock3;
    IBOutlet UIImageView *SnakeBlock4;
    IBOutlet UIImageView *SnakeBlock5;
    IBOutlet UIButton *StartGame;
    
    NSTimer *SnakeMovement;
    
}

-(void)SnakeMoving;
-(IBAction)Start:(id)sender;

@end
