//
//  Game.h
//  Space Invaders
//
//  Created by Todd Duberstein on 8/9/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AudioToolbox/AudioToolbox.h"

int ShipMovement;
int BulletMovement;
int BulletsOnScreen;

@interface Game : UIViewController
{
    
    IBOutlet UIButton *Start;
    IBOutlet UIButton *Exit;
    IBOutlet UIButton *Shoot;
    
    IBOutlet UIImageView *Ship;
    IBOutlet UIImageView *Bullet;
    
    NSTimer *MovementTimer;
    
}

-(IBAction)Start:(id)sender;
-(IBAction)Shoot:(id)sender;
-(void)Movement;

@end
