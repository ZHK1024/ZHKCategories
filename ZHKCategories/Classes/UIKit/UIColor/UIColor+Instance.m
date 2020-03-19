//
//  UIColor+Instance.m
//  Pods
//
//  Created by ZHK on 2018/8/31.
//
//

#import "UIColor+Instance.h"

@implementation UIColor (Instance)

+ (UIColor *)debugColor {
    return [UIColor colorWithRed:(arc4random() % 256 / 255.0) green:(arc4random() % 256 / 255.0) blue:arc4random() % 256 / 255.0 alpha:1];
}

@end
