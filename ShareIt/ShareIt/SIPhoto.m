/*
 * Copyright 2014-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "SIPhoto.h"

@implementation SIPhoto

+ (instancetype)photoWithObjectURL:(NSURL *)objectURL
                             title:(NSString *)title
                            rating:(NSUInteger)rating
                             image:(UIImage *)image
{
  SIPhoto *photo = [[self alloc] init];
  photo.objectURL = objectURL;
  photo.title = title;
  photo.rating = rating;
  photo.image = image;
  return photo;
}

@end
