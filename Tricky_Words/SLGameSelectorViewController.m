//
//  GameSelectorViewController.m
//  Tricky_Words
//
//  Created by Kristian on 09/11/2013.
//  Copyright (c) 2013 Kristian Mills. All rights reserved.
//

#import "SLGameSelectorViewController.h"

@interface SLGameSelectorViewController ()

@end

@implementation SLGameSelectorViewController

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
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    challengesArray = [[NSArray alloc] initWithArray:[defaults objectForKey:@"challengesArray"]];
    
    [_challengesTable reloadData];
}

//get number of sections in tableView from challenges array
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

//get number of rows by counting number of challenges
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return challengesArray.count;
}

//setup cells in tableView
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //setup cell
    static NSString *CellIdentifier = @"challengesListCell";
    SingleListSelectionCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    NSDictionary *game = [challengesArray objectAtIndex:indexPath.row];
    
    NSString *gameName = [game objectForKey:@"challenge"];
    BOOL unlocked = [[game objectForKey:@"status"] boolValue];
    
    if (!unlocked) {
    cell.lockedImage.text = @"X";
    }
    else cell.lockedImage.text = nil;
    
    cell.challengesTitle.text = gameName;
    
     
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    /*
     NSDictionary *game = [gamesList objectAtIndex:indexPath.row];
     BOOL unlocked = [[game objectForKey:@"unlocked"] boolValue];
     
     if (unlocked) {
     NSLog(@"play game");
     
     Store *myStore = [Store sharedStore];
     NSNumber *gameSelected = [NSNumber numberWithInteger:indexPath.row];
     [myStore setGameSelected:gameSelected];
     
     //play click sound if FX turned on
     if (soundFX) {
     [clickSound play];
     }
     
     [self performSegueWithIdentifier:@"playGame" sender:self];
     }
     
     if (!unlocked) {
     NSLog(@"game locked");
     
     UIAlertView *Alert = [[UIAlertView alloc] initWithTitle:@"Sorry!" message:@"This category is currently locked. To unlock achieve more correct answers, or unlock from the store. Do you want to unlock now?" delegate:self cancelButtonTitle:@"YES!" otherButtonTitles:@"No", nil];
     
     [Alert show];
     }*/
}






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
