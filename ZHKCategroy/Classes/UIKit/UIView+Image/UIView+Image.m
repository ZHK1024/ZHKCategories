//
//  UIView+Image.m
//  WeiQianDai
//
//  Created by ZHK on 2017/9/8.
//  Copyright © 2017年 Weiyu. All rights reserved.
//

#import "UIView+Image.h"

@implementation UIView (Image)

- (UIImage *)contentImage {
    //UIGraphicsBeginImageContext(theView.bounds.size);
    
    UIGraphicsBeginImageContextWithOptions(self.bounds.size, YES, 0.0);
    [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

@end
