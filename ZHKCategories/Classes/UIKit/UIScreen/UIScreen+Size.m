//
//  UIScreen+Size.m
//  Pods
//
//  Created by ZHK on 2018/8/31.
//
//

#import "UIScreen+Size.h"

@implementation UIScreen (Size)

+ (CGRect)bounds {
    return [UIScreen mainScreen].bounds;
}

+ (CGSize)size {
    return UIScreen.bounds.size;
}

+ (CGFloat)width {
    return UIScreen.size.width;
}

+ (CGFloat)height {
    return UIScreen.size.height;
}

+ (CGFloat)scaleX {
    return UIScreen.width / 375.0;
}

+ (CGFloat)scaleY {
    return UIScreen.height / 667.0;
}

@end
