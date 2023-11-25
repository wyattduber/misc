//
//  ViewController.m
//  Piano App
//
//  Created by Todd Duberstein on 7/28/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "ViewController.h"

@interface UIViewController ()

@end

@implementation ViewController

-(IBAction)LabelsOff:(id)sender{
    
    
    
}

-(IBAction)LabelsOn:(id)sender{
    
    
    
}

-(IBAction)WK1:(id)sender{
    
    AudioServicesPlaySystemSound(A);
    
}

-(IBAction)WK2:(id)sender{
    
    AudioServicesPlaySystemSound(B);
    
}

-(IBAction)WK3:(id)sender{
    
    AudioServicesPlaySystemSound(C);
    
}

-(IBAction)WK4:(id)sender{
    
    AudioServicesPlaySystemSound(D);
    
}

-(IBAction)WK5:(id)sender{
    
    AudioServicesPlaySystemSound(E);
    
}

-(IBAction)WK6:(id)sender{
    
    AudioServicesPlaySystemSound(F);
    
}

-(IBAction)WK7:(id)sender{
    
    AudioServicesPlaySystemSound(G);
    
}

-(IBAction)BK1:(id)sender{
    
    AudioServicesPlaySystemSound(AFlat);
    
}

-(IBAction)BK2:(id)sender{
    
    AudioServicesPlaySystemSound(ASharp);
    
}

-(IBAction)BK3:(id)sender{
    
    AudioServicesPlaySystemSound(CSharp);
  
}

-(IBAction)BK4:(id)sender{
    
    AudioServicesPlaySystemSound(EFlat);
    
}

-(IBAction)BK5:(id)sender{
    
    AudioServicesPlaySystemSound(FSharp);
    
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
    WhiteKey1.hidden = NO;
    WhiteKey2.hidden = NO;
    WhiteKey3.hidden = NO;
    WhiteKey4.hidden = NO;
    WhiteKey5.hidden = NO;
    WhiteKey6.hidden = NO;
    WhiteKey7.hidden = NO;
    BlackKey1.hidden = NO;
    BlackKey2.hidden = NO;
    BlackKey3.hidden = NO;
    BlackKey4.hidden = NO;
    BlackKey5.hidden = NO;
    
    NSURL *Play1Natural = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"A" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) Play1Natural, &A);
    
    NSURL *Play2Natural = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"B" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) Play2Natural, &B);
    
    NSURL *Play3Natural = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"C" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) Play3Natural, &C);
    
    NSURL *Play4Natural = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"D" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) Play4Natural, &D);
    
    NSURL *Play5Natural = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"E" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) Play5Natural, &E);
    
    NSURL *Play6Natural = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"F" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) Play6Natural, &F);
    
    NSURL *Play7Natural = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"G" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) Play7Natural, &G);
    
    NSURL *Play1Flat = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Ab" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) Play1Flat, &AFlat);
    
    NSURL *Play2Flat = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Bb" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) Play2Flat, &ASharp);
    
    NSURL *Play3Sharp = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"C#" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) Play3Sharp, &CSharp);
    
    NSURL *Play4Flat = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"Eb" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) Play4Flat, &EFlat);
    
    NSURL *Play5Sharp = [NSURL fileURLWithPath:[[NSBundle mainBundle] pathForResource:@"F#" ofType:@"wav"]];
    AudioServicesCreateSystemSoundID((__bridge CFURLRef) Play5Sharp, &FSharp);
    
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