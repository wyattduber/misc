//
//  Login.m
//  FOLO
//
//  Created by Todd Duberstein on 7/30/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "Login.h"

BOOL AccountIsTrue;

@interface Login ()
{
    IBOutlet UITextField *UserName;
    IBOutlet UITextField *Password;
    IBOutlet UIButton *EnterCredentials;
    IBOutlet UIButton *GoBack;
    IBOutlet UIButton *ClickHere;
    IBOutlet UIButton *GoToMap;
    IBOutlet UIActivityIndicatorView *LoadingAccounts;
    
    NSDictionary *CredentialsDictionary;
    NSDictionary *ChangeForNewAccount;
    NSDictionary *HaventEnteredInCredentials;
    NSDictionary *NewAccount;
    NSDictionary *AccountNonexistent;
    
    UIAlertView *alertAccountNonexistent;
    
    NSTimer *RunLoadAccount;
    NSTimer *RunLoadCreatedAccount;
    
}

-(IBAction)CheckCredentials:(id)sender;
-(IBAction)CreateAccountButton:(id)sender;

-(void)LoadAccount;
-(void)LoadCreatedAccount;

@end

@implementation Login

-(void)LoadCreatedAccount{
    
    UserName.hidden = YES;
    Password.hidden = YES;
    EnterCredentials.hidden = YES;
    GoBack.hidden = YES;
    ClickHere.hidden = YES;
    GoToMap.hidden = YES;

    LoadingAccounts.hidden = YES;
    
    
    if ([[NewAccount objectForKey:UserName.text]isEqualToString:Password.text]) {
        UIAlertView *accountCreated = [[UIAlertView alloc] initWithTitle:@"Account Created" message:@"Thank you for creating an account with FOLO!" delegate:self cancelButtonTitle:@"Ok, Thanks!" otherButtonTitles:nil];
        [accountCreated show];
        GoToMap.hidden = YES;
        EnterCredentials.hidden = NO;
    }
    
}

-(void)LoadAccount{
    
    UserName.hidden = YES;
    Password.hidden = YES;
    EnterCredentials.hidden = YES;
    GoBack.hidden = YES;
    ClickHere.hidden = YES;
    GoToMap.hidden = YES;
    LoadingAccounts.hidden = NO;
    
    if (AccountIsTrue == YES) {
        [self LoadCreatedAccount];
    }
    else{
        [[AccountNonexistent objectForKey:UserName.text]isEqualToString:Password.text]; {
            alertAccountNonexistent = [[UIAlertView alloc] initWithTitle:@"No Information" message:@"Please Enter Your Credentials." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
            GoToMap.hidden = YES;
            EnterCredentials.hidden = NO;
            {
    
}
        }
    }
}


-(IBAction)CreateAccountButton:(id)sender{
    
    NewAccount = [[NSDictionary alloc] initWithObjects:[NSArray arrayWithObjects:@"@%", Password, nil] forKeys:[NSArray arrayWithObjects:@"@%", UserName, nil]];
    
    RunLoadCreatedAccount = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(LoadCreatedAccount) userInfo:nil repeats:NO];
    
    AccountIsTrue = YES;
    
}

-(IBAction)CheckCredentials:(id)sender{

     if ([[CredentialsDictionary objectForKey:UserName.text]isEqualToString:Password.text]) {
        UIAlertView *alertCorrect = [[UIAlertView alloc] initWithTitle:@"Correct Password" message:@"Password is correct!" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alertCorrect show];
         GoToMap.hidden = NO;
         EnterCredentials.hidden = YES;
         AccountIsTrue = YES;
    }
    else{
        UIAlertView *alertWrong = [[UIAlertView alloc] initWithTitle:@"Incorrect Password" message:@"Incorrect Password!" delegate:self cancelButtonTitle:@"Dismiss" otherButtonTitles:nil];
        [alertWrong show];
        GoToMap.hidden = YES;
        EnterCredentials.hidden = NO;
    }
    
    if ([[HaventEnteredInCredentials objectForKey:UserName.text]isEqualToString:Password.text]) {
        UIAlertView *alertNoneEntered = [[UIAlertView alloc] initWithTitle:@"No Information" message:@"Please Enter Your Credentials." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alertNoneEntered show];
        GoToMap.hidden = YES;
        EnterCredentials.hidden = NO;
    }
    
    RunLoadAccount = [NSTimer scheduledTimerWithTimeInterval:3 target:self selector:@selector(LoadAccount) userInfo:nil repeats:NO];

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
    
    CredentialsDictionary = [[NSDictionary alloc] initWithObjects:[NSArray arrayWithObjects:@"12345", nil] forKeys:[NSArray arrayWithObjects:@"Wcash", nil]];
    HaventEnteredInCredentials = [[NSDictionary alloc] initWithObjects:[NSArray arrayWithObjects:@"Password", nil] forKeys:[NSArray arrayWithObjects:@"Username", nil]];
    
    GoToMap.hidden = YES;
    EnterCredentials.hidden = NO;
    UserName.hidden = NO;
    Password.hidden = NO;
    AccountIsTrue = NO;
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

            - (void)didReceiveMemoryWarning{
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
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
