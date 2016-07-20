/*
 * Copyright 2014-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <UIKit/UIKit.h>

#import "SIPhoto.h"

@interface SIMainView : UIView

@property (nonatomic, copy) NSArray *images;
@property (nonatomic, strong) SIPhoto *photo;

@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UILabel *titleLabel;

@end
