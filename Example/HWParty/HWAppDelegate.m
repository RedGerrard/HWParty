//
//  HWAppDelegate.m
//  HWParty
//
//  Created by wozaizhelishua on 04/03/2019.
//  Copyright (c) 2019 wozaizhelishua. All rights reserved.
//

#import "HWAppDelegate.h"
#import "HWParty.h"

@implementation HWAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    UITabBarController *rootVC = [HWParty rootTabBarCcontroller];
    //    icon_user_nav_a
    [HWParty addChildVC:[UIViewController new] normalImageName:@"icon_user_nav_a" selectedImageName:@"icon_user_nav_a_a"  title:@"首页" isRequiredNavController:NO];
    [HWParty addChildVC:[UIViewController new] normalImageName:@"icon_user_nav_b" selectedImageName:@"icon_user_nav_b_a" title:@"方案" isRequiredNavController:YES];
    [HWParty addChildVC:[UIViewController new] normalImageName:@"icon_user_nav_c" selectedImageName:@"icon_user_nav_c_a" title:@"掌上操盘" isRequiredNavController:NO];
    [HWParty addChildVC:[UIViewController new] normalImageName:@"icon_user_nav_d" selectedImageName:@"icon_user_nav_d_a" title:@"我的" isRequiredNavController:YES];
    
    rootVC.delegate = self;
    
    self.window.rootViewController = rootVC;
    [self.window makeKeyAndVisible];
    return YES;
}

-(BOOL)tabBarController:(UITabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{
    
    NSLog(@"%d,%s",__LINE__,__func__);
    
    return true;
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
