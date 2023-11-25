//
//  Game.m
//  Doodle Jump
//
//  Created by Todd Duberstein on 6/11/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(void)PlatformMovement{
    
    Platform3.center = CGPointMake(Platform3.center.x + Platform3SideMovement, Platform3.center.y);
    
    Platform5.center = CGPointMake(Platform5.center.x + Platform5SideMovement, Platform5.center.y);
    
    if (Platform3.center.x < 37) {
        Platform3SideMovement = 2;
    }
    
    if (Platform3.center.x > 283) {
        Platform3SideMovement = -2;
    }
    
    if (Platform5.center.x < 37) {
        Platform5SideMovement = 2;
    }
    
    if (Platform5.center.x > 283) {
        Platform5SideMovement = -2;
    }

    
    
    
    
}




-(void)Bounce{
    
Ball.animationImages = [NSArray arrayWithObjects:
                        [UIImage imageNamed:@"SlightlySquished.png"],
                        [UIImage imageNamed:@"Flat.png"],
                        [UIImage imageNamed:@"SlightlySquished.png"],
                        [UIImage imageNamed:@"BallNormal.png"], nil];
    
    [Ball setAnimationRepeatCount:1];
    Ball.animationDuration = 0.02;
    [Ball startAnimating];
    
    
    
    
    
}




-(void)Moving{
    
    [self PlatformMovement];
    
    
    Ball.center = CGPointMake(Ball.center.x, Ball.center.y - UpMovement);
    
    if ((CGRectIntersectsRect(Ball.frame, Platform1.frame)) && (UpMovement < -21)) {
        [self Bounce];
    }
    
    UpMovement = UpMovement - 0.1;

}


-(IBAction)StartGame:(id)sender{
    
    Start.hidden = YES;
    UpMovement = -5;
    
    Movement = [NSTimer scheduledTimerWithTimeInterval:0.05 target:self selector:@selector(Moving) userInfo:nil repeats:YES];
    
    Platform2.hidden = NO;
    Platform4.hidden = NO;
    Platform3.hidden = NO;
    Platform5.hidden = NO;
    
    RandomPosition = arc4random()%248;
    RandomPosition = RandomPosition + 36;
    Platform2.center = CGPointMake(RandomPosition, 448);
    
    RandomPosition = arc4random()%248;
    RandomPosition = RandomPosition + 36;
    Platform3.center = CGPointMake(RandomPosition, 336);
    
    RandomPosition = arc4random()%248;
    RandomPosition = RandomPosition + 36;
    Platform4.center = CGPointMake(RandomPosition, 224);
    
    RandomPosition = arc4random()%248;
    RandomPosition = RandomPosition + 36;
    Platform5.center = CGPointMake(RandomPosition, 112);
    
    
    Platform3SideMovement = -2;
    Platform5SideMovement = 2;
    

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
    
    Platform2.hidden = YES;
    Platform3.hidden = YES;
    Platform4.hidden = YES;
    Platform5.hidden = YES;
    
    
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
