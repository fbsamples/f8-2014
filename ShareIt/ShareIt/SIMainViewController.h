/*
 * Copyright 2014-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <UIKit/UIKit.h>

#import <FacebookSDK/FacebookSDK.h>

@interface SIMainViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, strong) IBOutlet FBLikeControl *pageLikeControl;

@property (nonatomic, strong) IBOutlet FBLoginView *loginView;
@property (nonatomic, strong) IBOutlet UIPageControl *pageControl;
@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;

- (IBAction)changePage:(id)sender;
- (IBAction)share:(id)sender;

@end
