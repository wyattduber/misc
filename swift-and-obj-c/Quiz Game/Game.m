//
//  Game.m
//  Quiz Game
//
//  Created by Todd Duberstein on 7/16/14.
//  Copyright (c) 2014 DuberFam. All rights reserved.
//

#import "Game.h"

@interface Game ()

@end

@implementation Game

-(void)TimerCountDown{
    
    TimeLeft = TimeLeft - 1;
    Timer.text = [NSString stringWithFormat:@"%i", TimeLeft];
    
    if (TimeLeft < 1) {
        [self WrongAnswer];
        [TimerLeft invalidate];
    }
    
}

-(void)CheckAnswer{
    
    NextCategory.hidden = NO;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    QuestionText.hidden = YES;
    CategorySelected.hidden = YES;
    Result.hidden = NO;
    
    if (LivesNumber < 1) {
        Result.image = [UIImage imageNamed:@"GameOver.png"];
        NextCategory.hidden = YES;
        Exit.hidden = NO;
        GameInProgress = NO;
    }
    
    if (Answer1Correct == YES) {
        ScoreNumber = ScoreNumber + 1;
        Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
        Result.image = [UIImage imageNamed:@"Correct.png"];
        NextCategory.hidden = NO;
        Exit.hidden = YES;
    }
    else{
        ScoreNumber = ScoreNumber - 1;
        LivesNumber = LivesNumber - 1;
        Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
        Result.image = [UIImage imageNamed:@"Wrong.png"];
        NextCategory.hidden = NO;
        Exit.hidden = YES;
    }
    
    if (Answer2Correct == YES) {
        ScoreNumber = ScoreNumber + 1;
        Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
        Result.image = [UIImage imageNamed:@"Correct.png"];
        NextCategory.hidden = NO;
        Exit.hidden = YES;
    }
    else{
        ScoreNumber = ScoreNumber - 1;
        LivesNumber = LivesNumber - 1;
        Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
        Result.image = [UIImage imageNamed:@"Wrong.png"];
        NextCategory.hidden = NO;
        Exit.hidden = YES;
    }
    
    if (Answer3Correct == YES) {
        ScoreNumber = ScoreNumber + 1;
        Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
        Result.image = [UIImage imageNamed:@"Correct.png"];
        NextCategory.hidden = NO;
        Exit.hidden = YES;
    }
    else{
        ScoreNumber = ScoreNumber - 1;
        LivesNumber = LivesNumber - 1;
        Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
        Result.image = [UIImage imageNamed:@"Wrong.png"];
        NextCategory.hidden = NO;
        Exit.hidden = YES;
    }
    
    if (Answer4Correct == YES) {
        ScoreNumber = ScoreNumber + 1;
        Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
        Result.image = [UIImage imageNamed:@"Correct.png"];
        NextCategory.hidden = NO;
        Exit.hidden = YES;
    }
    else{
        ScoreNumber = ScoreNumber - 1;
        LivesNumber = LivesNumber - 1;
        Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
        Result.image = [UIImage imageNamed:@"Wrong.png"];
        NextCategory.hidden = NO;
        Exit.hidden = YES;
    }
    
}



-(void)WrongAnswer{
    
    LivesNumber = LivesNumber - 1;
    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
    NextCategory.hidden = NO;
    Answer1.hidden = YES;
    Answer2.hidden = YES;
    Answer3.hidden = YES;
    Answer4.hidden = YES;
    QuestionText.hidden = YES;
    CategorySelected.hidden = YES;
    
    Result.image = [UIImage imageNamed:@"Wrong.png"];
    
    if (LivesNumber < 1) {
        Result.image = [UIImage imageNamed:@"GameOver.png"];
        NextCategory.hidden = YES;
        Exit.hidden = NO;
        GameInProgress = NO;
    }
    
}

-(IBAction)Answer1:(id)sender{
    
    if (Answer1Correct == YES) {
        [self CheckAnswer];
    }
    else{
        [self CheckAnswer];
    }
    
    [TimerLeft invalidate];
    
}

-(IBAction)Answer2:(id)sender{
    
    if (Answer2Correct == YES) {
        [self CheckAnswer];
    }
    else{
        [self CheckAnswer];
    }
    
    [TimerLeft invalidate];
    
}

-(IBAction)Answer3:(id)sender{
    
    if (Answer3Correct == YES) {
        [self CheckAnswer];
    }
    else{
        [self CheckAnswer];
    }
    
    [TimerLeft invalidate];
    
}

-(IBAction)Answer4:(id)sender{
    
    if (Answer4Correct == YES) {
        [self CheckAnswer];
    }
    else{
        [self CheckAnswer];
    }
    
    [TimerLeft invalidate];
    
}

-(void)Sports{
    
    TimerLeft = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(TimerCountDown) userInfo:nil repeats:YES];
    
    TimeLeft = 15;
    Timer.text = [NSString stringWithFormat:@"%i", TimeLeft];
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"What Team Won the 2012/2013 English Football Premier Leage?"];
            [Answer1 setTitle:@"Manchester United" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Manchester City" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Liverpool" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Chelsea" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which City Hosted the 1992 Olympic Games?"];
            [Answer1 setTitle:@"Norwich" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Barcelona" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Tokyo" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Lisbon" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"By What Score Did England Win The Ashes In The Summer of 2013?"];
            [Answer1 setTitle:@"5-0" forState:UIControlStateNormal];
            [Answer2 setTitle:@"4-0" forState:UIControlStateNormal];
            [Answer3 setTitle:@"3-0" forState:UIControlStateNormal];
            [Answer4 setTitle:@"2-0" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"What Team Won The NBA Playoff Finals In 2013?"];
            [Answer1 setTitle:@"Golden State Warriors" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Memphis Grizzlies" forState:UIControlStateNormal];
            [Answer3 setTitle:@"San Antonio Spurs" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Miami Heat" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
    }
    
}

-(void)Movies{
    
    TimerLeft = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(TimerCountDown) userInfo:nil repeats:YES];
    
    TimeLeft = 15;
    Timer.text = [NSString stringWithFormat:@"%i", TimeLeft];
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Which of there Superheroes were not in the 2012 Film: TheAvengers?"];
            [Answer1 setTitle:@"Spiderman" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Iron Man" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The Hulk" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Hawk Eye" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"In What Year Was Toy Story 1 Released In Cinemas?"];
            [Answer1 setTitle:@"1994" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1995" forState:UIControlStateNormal];
            [Answer3 setTitle:@"1996" forState:UIControlStateNormal];
            [Answer4 setTitle:@"1997" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Who Directed The Movie: Snakes On A Plane?"];
            [Answer1 setTitle:@"Ryan Wheeler" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Matt Heaney" forState:UIControlStateNormal];
            [Answer3 setTitle:@"David R. Ellis" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Gina Jepson" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Will, Jay, Simon and Neil Are The Main Characters In What 2011 Movie?"];
            [Answer1 setTitle:@"Drive" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Thor" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Mad Men" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The InBetweeners" forState:UIControlStateNormal];
            Answer4Correct = YES;
        default:
            break;
    }
    
}

-(void)Music{

    TimerLeft = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(TimerCountDown) userInfo:nil repeats:YES];
    
    TimeLeft = 15;
    Timer.text = [NSString stringWithFormat:@"%i", TimeLeft];
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Who Won The First Series Of 'X-Factor (UK)'?"];
            [Answer1 setTitle:@"Steve Brookenstein" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ray Quinn" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Matt Heaney" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Ryan Baxter" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Who Won The Award For Best British Band At The BRITS 2013?"];
            [Answer1 setTitle:@"One Direction" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Mumford and Sons" forState:UIControlStateNormal];
            [Answer3 setTitle:@"ColdPlay" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Oasis" forState:UIControlStateNormal];;
            Answer2Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Who Won The 2013 Eurovision Song Contest?"];
            [Answer1 setTitle:@"Iceland" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Ireland" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Denmark" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Norway" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"The Album 'Yours Truly, Angry Mob' Is By What Band?"];
            [Answer1 setTitle:@"The Wombats" forState:UIControlStateNormal];
            [Answer2 setTitle:@"ColdPlay" forState:UIControlStateNormal];
            [Answer3 setTitle:@"The Feeling" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The Kaiser Cheifs" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        default:
            break;
    }
    
}

-(void)Games{
    
    TimerLeft = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(TimerCountDown) userInfo:nil repeats:YES];
    
    TimeLeft = 15;
    Timer.text = [NSString stringWithFormat:@"%i", TimeLeft];
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Who Is The Main Character In The Uncharted Gaming Series?"];
            [Answer1 setTitle:@"Nathan Drake" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Drake Nathan" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Matt Smyth" forState:UIControlStateNormal];
            [Answer4 setTitle:@"George Smith" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"In What Gaming Series Does Lara Craft Appear?"];
            [Answer1 setTitle:@"The Last of Us" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Tomb Raider" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Fall Out" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Saint's Row" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which GTA Game Was Released In 2013?"];
            [Answer1 setTitle:@"3" forState:UIControlStateNormal];
            [Answer2 setTitle:@"4" forState:UIControlStateNormal];
            [Answer3 setTitle:@"5" forState:UIControlStateNormal];
            [Answer4 setTitle:@"6" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"What Was The Most Successful iPhone App?"];
            [Answer1 setTitle:@"Doodle Jump" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Temple Run" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Mega Epic Awesome Pong" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Angry Birds" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        default:
            break;
    }
    
}

-(void)Geography{
    
    TimerLeft = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(TimerCountDown) userInfo:nil repeats:YES];
    
    TimeLeft = 15;
    Timer.text = [NSString stringWithFormat:@"%i", TimeLeft];
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"What is the capital city of Lativa?"];
            [Answer1 setTitle:@"Riga" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Moscow" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Tallinn" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Lima" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"The United Kingdon and the USA are separated by what Ocean?"];
            [Answer1 setTitle:@"Pacific" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Atlantic" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Indian" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Arctic" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Which of these countries does not border Germany?"];
            [Answer1 setTitle:@"Denmark" forState:UIControlStateNormal];
            [Answer2 setTitle:@"France" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Spain" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Poland" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"What is the worlds largest river?"];
            [Answer1 setTitle:@"Yangtze" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Lena" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Volga" forState:UIControlStateNormal];
            [Answer4 setTitle:@"The Amazon" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
            
        default:
            break;
    }
  
}
-(void)History{
    
    TimerLeft = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(TimerCountDown) userInfo:nil repeats:YES];
    
    TimeLeft = 15;
    Timer.text = [NSString stringWithFormat:@"%i", TimeLeft];
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"WHo was Henry VIII's Second Wife?"];
            [Answer1 setTitle:@"Anne Boleyn" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Catherine of Aragon" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Jane Seymour" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Anne of Cleves" forState:UIControlStateNormal];
            Answer1Correct = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"In What Year did World War I end?"];
            [Answer1 setTitle:@"1916" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1918" forState:UIControlStateNormal];
            [Answer3 setTitle:@"1920" forState:UIControlStateNormal];
            [Answer4 setTitle:@"1922" forState:UIControlStateNormal];
            Answer2Correct = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"In what year was the Eiffel Tower opened?"];
            [Answer1 setTitle:@"1772" forState:UIControlStateNormal];
            [Answer2 setTitle:@"1906" forState:UIControlStateNormal];
            [Answer3 setTitle:@"1889" forState:UIControlStateNormal];
            [Answer4 setTitle:@"1945" forState:UIControlStateNormal];
            Answer3Correct = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Which U.S. President was named 'Tricky Dicky'?"];
            [Answer1 setTitle:@"Thomas Jefferson" forState:UIControlStateNormal];
            [Answer2 setTitle:@"Grover Clevland" forState:UIControlStateNormal];
            [Answer3 setTitle:@"Franklin D. Roosevelt" forState:UIControlStateNormal];
            [Answer4 setTitle:@"Richard Nixon" forState:UIControlStateNormal];
            Answer4Correct = YES;
            break;
        default:
            break;
    }
    
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
    
    if (GameInProgress == NO) {
        LivesNumber = 3;
        ScoreNumber = 0;
        TimeLeft = 15;
        GameInProgress = YES;
    }
    
    Result.hidden = YES;
    Exit.hidden = YES;
    NextCategory.hidden = YES;
    
    
    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    Timer.text = [NSString stringWithFormat:@"%i", TimeLeft];
    
    
    
    Answer1Correct = NO;
    Answer2Correct = NO;
    Answer3Correct = NO;
    Answer4Correct = NO;

    
    
    CategoryLoaded = [[NSUserDefaults standardUserDefaults] integerForKey:@"CategorySaved"];
    QuestionSelected = arc4random() %4;
    
    switch (CategoryLoaded) {
        case 1:
            CategorySelected.text = [NSString stringWithFormat:@"Sports"];
            [self Sports];
            break;
        case 2:
            CategorySelected.text = [NSString stringWithFormat:@"Films"];
            [self Movies];
            break;
        case 3:
            CategorySelected.text = [NSString stringWithFormat:@"Music"];
            [self Music];
            break;
        case 4:
            CategorySelected.text = [NSString stringWithFormat:@"Games"];
            [self Games];
            break;
        case 5:
            CategorySelected.text = [NSString stringWithFormat:@"Geography"];
            [self Geography];
            break;
        case 6:
            CategorySelected.text = [NSString stringWithFormat:@"History"];
            [self History];
            break;
            
        default:
            break;
    }
    
    
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




