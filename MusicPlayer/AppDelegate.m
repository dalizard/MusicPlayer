//
//  AppDelegate.m
//  MusicPlayer
//
//  Created by Dimitar Haralanov on 9/4/14.
//  Copyright (c) 2014 Dimitar Haralanov. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.

    // Hide the status bar
    [application setStatusBarHidden:YES];

    // Define a variable to get the full width of the window as we'll be using this value a lot
    CGFloat windowWidth = self.window.bounds.size.width;

    // Add the main background to the window
    UIImageView *backgroundView = [[UIImageView alloc] initWithFrame:self.window.bounds];
    backgroundView.image = [UIImage imageNamed:@"background"];
    [self.window addSubview:backgroundView];

    // Add the arrow and top label
    UIImageView *arrowView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, windowWidth, 45)];
    arrowView.image = [UIImage imageNamed:@"arrow"];
    [self.window addSubview:arrowView];

    // Ministry of fun image
    UIImageView *ministryView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 57, windowWidth, 28)];
    ministryView.image = [UIImage imageNamed:@"ministry"];
    [self.window addSubview:ministryView];

    // Add song button
    UIButton *addButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [addButton setImage:[UIImage imageNamed:@"add-button"] forState:UIControlStateNormal];
    [addButton setImage:[UIImage imageNamed:@"add-button-pressed"] forState:UIControlStateHighlighted];
    [addButton setFrame:CGRectMake(0, 102, windowWidth, 45)];
    [self.window addSubview:addButton];


    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
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
