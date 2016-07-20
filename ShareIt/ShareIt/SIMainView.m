/*
 * Copyright 2014-present, Facebook, Inc.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

#import "SIMainView.h"

@implementation SIMainView
{
  NSArray *_imageViews;
}

#pragma mark - Properties

- (void)setImages:(NSArray *)images
{
  if (![_images isEqualToArray:images]) {
    _images = [images copy];

    [_imageViews makeObjectsPerformSelector:@selector(removeFromSuperview)];

    NSMutableArray *imageViews = [[NSMutableArray alloc] initWithCapacity:[images count]];
    UIScrollView *scrollView = self.scrollView;
    for (UIImage *image in images) {
      UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
      [scrollView addSubview:imageView];
      [imageViews addObject:imageView];
    }
    _imageViews = imageViews;
    [self setNeedsLayout];
  }
}

- (void)setPhoto:(SIPhoto *)photo
{
  if (![_photo isEqual:photo]) {
    _photo = photo;
    _titleLabel.text = photo.title;
  }
}

#pragma mark - Layout

- (void)layoutSubviews
{
  [super layoutSubviews];

  UIScrollView *scrollView = self.scrollView;
  CGSize scrollViewSize = scrollView.bounds.size;
  scrollView.contentSize = CGSizeMake(scrollViewSize.width * _imageViews.count,
                                      scrollViewSize.height);
  [_imageViews enumerateObjectsUsingBlock:^(UIView *imageView, NSUInteger idx, BOOL *stop) {
    CGSize imageViewSize = [imageView sizeThatFits:scrollViewSize];
    imageView.frame = CGRectMake(scrollViewSize.width * idx + floorf((scrollViewSize.width - imageViewSize.width) / 2),
                                 0.0,
                                 imageViewSize.height,
                                 imageViewSize.height);
  }];
}

@end
