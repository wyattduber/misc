//
//  ViewController.h
//  Piano App
//
//  Created by Todd Duberstein on 7/28/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>

@interface ViewController : UIViewController
{
    IBOutlet UIButton *WhiteKey1;
    IBOutlet UIButton *WhiteKey2;
    IBOutlet UIButton *WhiteKey3;
    IBOutlet UIButton *WhiteKey4;
    IBOutlet UIButton *WhiteKey5;
    IBOutlet UIButton *WhiteKey6;
    IBOutlet UIButton *WhiteKey7;
    IBOutlet UIButton *BlackKey1;
    IBOutlet UIButton *BlackKey2;
    IBOutlet UIButton *BlackKey3;
    IBOutlet UIButton *BlackKey4;
    IBOutlet UIButton *BlackKey5;
    
    IBOutlet UILabel *Labels;
    IBOutlet UILabel *AbLabel;
    IBOutlet UILabel *ALabel;
    
    SystemSoundID A;
    SystemSoundID B;
    SystemSoundID C;
    SystemSoundID D;
    SystemSoundID E;
    SystemSoundID F;
    SystemSoundID G;
    SystemSoundID AFlat;
    SystemSoundID ASharp;
    SystemSoundID FSharp;
    SystemSoundID EFlat;
    SystemSoundID CSharp;
    
    
}

-(IBAction)WK1:(id)sender;
-(IBAction)WK2:(id)sender;
-(IBAction)WK3:(id)sender;
-(IBAction)WK4:(id)sender;
-(IBAction)WK5:(id)sender;
-(IBAction)WK6:(id)sender;
-(IBAction)WK7:(id)sender;
-(IBAction)LabelsOn:(id)sender;
-(IBAction)LabelsOff:(id)sender;

@end