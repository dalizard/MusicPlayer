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
    UIImageView *arrowView = [[UIImageView alloc] initWithFrame:CGRectMake(windowWidth, 0, windowWidth, 45)];
    arrowView.image = [UIImage imageNamed:@"arrow"];
    [self.window addSubview:arrowView];

    // Ministry of fun image
    UIImageView *ministryView = [[UIImageView alloc] initWithFrame:CGRectMake(windowWidth, 57, windowWidth, 28)];
    ministryView.image = [UIImage imageNamed:@"ministry"];
    [self.window addSubview:ministryView];

    // Add song button
    UIButton *addButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [addButton setImage:[UIImage imageNamed:@"add-button"] forState:UIControlStateNormal];
    [addButton setImage:[UIImage imageNamed:@"add-button-pressed"] forState:UIControlStateHighlighted];
    [addButton setFrame:CGRectMake(windowWidth, 102, windowWidth, 45)];
    [self.window addSubview:addButton];

    // Katy Perry row
    UIImageView *firstRow =
    [[UIImageView alloc] initWithFrame:CGRectMake(windowWidth, 170, windowWidth, 80)];
    firstRow.image = [UIImage imageNamed:@"1st-row"];
    [self.window addSubview:firstRow];

    // Shakira row
    UIImageView *secondRow =
    [[UIImageView alloc] initWithFrame:CGRectMake(windowWidth, 170+80, windowWidth, 80)];
    secondRow.image = [UIImage imageNamed:@"2nd-row"];
    [self.window addSubview:secondRow];

    // Pitbull row
    UIImageView *thirdRow =
    [[UIImageView alloc] initWithFrame:CGRectMake(windowWidth, 170+160, windowWidth, 80)];
    thirdRow.image = [UIImage imageNamed:@"3rd-row"];
    [self.window addSubview:thirdRow];

    // Lana del Rey row
    UIImageView *fourthRow =
    [[UIImageView alloc] initWithFrame:CGRectMake(windowWidth, 170+240, windowWidth, 80)];
    fourthRow.image = [UIImage imageNamed:@"4th-row"];
    [self.window addSubview:fourthRow];

    // HEX row
    UIImageView *fifthRow =
    [[UIImageView alloc] initWithFrame:CGRectMake(windowWidth, 170+320, windowWidth, 80)];
    fifthRow.image = [UIImage imageNamed:@"5th-row"];
    [self.window addSubview:fifthRow];




    [UIView animateWithDuration:2.1
                          delay:0
         usingSpringWithDamping:0.6
          initialSpringVelocity:0
                        options:0
                     animations:^{
                         [arrowView setFrame:CGRectMake(0, 0, windowWidth, 45)];
                     }
                     completion:NULL];

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
