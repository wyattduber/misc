//
//  Game.h
//  Doodle Jump
//
//  Created by Todd Duberstein on 6/11/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>

float UpMovement;
int RandomPosition;
int Platform3SideMovement;
int Platform5SideMovement;

@interface Game : UIViewController
{
    
    IBOutlet UIButton *Start;
    IBOutlet UIImageView *Ball;
    IBOutlet UIImageView *Platform1;
    IBOutlet UIImageView *Platform2;
    IBOutlet UIImageView *Platform3;
    IBOutlet UIImageView *Platform4;
    IBOutlet UIImageView *Platform5;
    
    NSTimer *Movement;
    
    
}

-(IBAction)StartGame:(id)sender;
-(void)Moving;
-(void)Bounce;
-(void)PlatformMovement;

@end
