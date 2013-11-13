//
//  AppDelegate.m
//  Tricky_Words
//
//  Created by Kristian on 09/11/2013.
//  Copyright (c) 2013 Kristian Mills. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    BOOL initiated = [[defaults objectForKey:@"initiated"]boolValue];
    
    if (!initiated) {
    
    NSArray *challengesArray = [[NSArray alloc] initWithObjects:
                       @"List 1",
                       @"List 2",
                       @"List 3",
                       @"List 4",
                       @"List 5",
                       @"List 6",
                       @"LIst 7",
                       nil];
    
    NSArray *lockedArray = [[NSArray alloc] initWithObjects:[NSNumber numberWithBool:YES], [NSNumber numberWithBool:YES], [NSNumber numberWithBool:YES], [NSNumber numberWithBool:YES], [NSNumber numberWithBool:YES], [NSNumber numberWithBool:YES],
        [NSNumber numberWithBool:NO],nil];

    NSMutableArray *mutableChallengesArray = [[NSMutableArray alloc] init];
    
    for (int i = 0; i <challengesArray.count; i++){
        NSDictionary *challenge = [[NSDictionary alloc] initWithObjectsAndKeys:[challengesArray objectAtIndex:i], @"challenge", [lockedArray objectAtIndex:i], @"status", nil];
        [mutableChallengesArray addObject: challenge];
    }
    NSLog(@"%@", mutableChallengesArray);
        
    [defaults setObject:mutableChallengesArray forKey:@"mutableChallengesArray"];
    [defaults setBool:YES forKey:@"initiated"];
    [defaults synchronize];
     }
    
    else{
        NSLog(@"Game Set Up Already");
    }
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
