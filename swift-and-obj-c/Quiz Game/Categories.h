//
//  Categories.h
//  Quiz Game
//
//  Created by Todd Duberstein on 7/16/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import <UIKit/UIKit.h>

int Category1Number;
int Category2Number;
int Category1SelectedNumber;
int Category2SelectedNumber;

@interface Categories : UIViewController
{
    
    IBOutlet UIButton *Category1;
    IBOutlet UIButton *Category2;
    
    
    
}

-(IBAction)Button1:(id)sender;
-(IBAction)Button2:(id)sender;

@end
