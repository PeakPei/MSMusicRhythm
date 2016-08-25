//
//  UIImage+Color.h
//  Foodies
//
//  Created by mr.scorpion on 3/7/16.
//  Copyright (c) 2016 mr.scorpion. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Color)

+ (UIImage *)imageWithColor:(UIColor *)color;
//+ (UIImage *)imageWithMusicGradient:(UIColor*)startColor withEndColor:(UIColor*)endColor;
+ (UIImage *)tintImage:(UIImage *)baseImage color:(UIColor *)theColor;
- (UIImage *)imageTintedWithColor:(UIColor *)color;
@end
