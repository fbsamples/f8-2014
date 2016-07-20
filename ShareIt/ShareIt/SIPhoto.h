/*
 * Copyright 2014-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import <UIKit/UIKit.h>

@interface SIPhoto : NSObject

+ (instancetype)photoWithObjectURL:(NSURL *)objectURL
                             title:(NSString *)title
                            rating:(NSUInteger)rating
                             image:(UIImage *)image;

@property (nonatomic, strong) UIImage *image;
@property (nonatomic, strong) NSURL *objectURL;
@property (nonatomic, assign) NSUInteger rating;
@property (nonatomic, strong) NSString *title;

@end
