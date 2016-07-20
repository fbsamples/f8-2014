/*
 * Copyright 2014-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "SIAppDelegate.h"

#import <FacebookSDK/FacebookSDK.h>

@implementation SIAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // pre-load classes that are to be included in interface builder
    [FBLikeControl class];
    [FBLoginView class];

#if DEBUG
    [FBSettings enableBetaFeature:FBBetaFeaturesLikeButton];
#endif

    return YES;
}

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation
{
    if ([FBAppCall handleOpenURL:url sourceApplication:sourceApplication fallbackHandler:NULL]) {
        return YES;
    } else {
        return NO;
    }
}

@end
