//
//  AppDelegate.m
//  JsonToEMMessage
//
//  Created by WYZ on 2017/5/25.
//  Copyright © 2017年 WYZ. All rights reserved.
//

#import "AppDelegate.h"
#import "RecordModel.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    NSString *str = @"{\"msg_id\":\"319663521891616756\",\"timestamp\":\"1491992263569\",\"direction\":\"outgoing\",\"to\":\"user2\",\"from\":\"admin@easemob.com\",\"chat_type\":\"chat\",\"payload\":{\"ext\":{},\"bodies\":[{\"msg\":\"haha\",\"type\":\"txt\"}],\"from\":\"user1\",\"to\":\"user2\"}}";
    
    RecordModel *model = [[RecordModel alloc] initWithJson:str];
    NSLog(@"~~~%@",model);
    
    EMOptions *options = [EMOptions optionsWithAppkey:@"sxqxwdong#mychatdemo"];
    options.enableConsoleLog = NO;
    
    [[EMClient sharedClient] initializeSDKWithOptions:options];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end