//
//  DFViewController.m
//  Flappy Bird Remake
//
//  Created by Todd Duberstein on 6/6/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "DFViewController.h"

@interface DFViewController ()

@end

@implementation DFViewController

- (void)viewDidLoad
{
    
    HighScoreNumber = [[NSUserDefaults standardUserDefaults] integerForKey:@"HighScoreSaved"];
    HighScore.text = [NSString stringWithFormat:@"High Score: %li", (long)HighScoreNumber];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
