//
//  AppDelegate.m
//  testParallax
//
//  Created by Digono Apps on 3/6/14.
//  Copyright (c) 2014 Digono Apps. All rights reserved.
//

#import "AppDelegate.h"
#import "ParallaxViewController.h"
@implementation AppDelegate



- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor whiteColor];
    
    ParallaxViewController *parall = [[ParallaxViewController alloc] init];
    
    
    UINavigationController *navigationController = [[UINavigationController alloc]  initWithRootViewController:parall];
    [parall release];
    parall=nil;
	
	[navigationController setNavigationBarHidden:YES animated:YES];
    self.window.rootViewController = navigationController;
    [navigationController release];
    navigationController=nil;
    
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


@end
