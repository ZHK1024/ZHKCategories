//
//  UIScreen+Size.h
//  Pods
//
//  Created by ZHK on 2018/8/31.
//
//

#import <UIKit/UIKit.h>

@interface UIScreen (Size)

/**
 UIScreen size
 */
@property (nonatomic, assign, readonly, class) CGSize  size;

/**
 UIScreen bounds
 */
@property (nonatomic, assign, readonly, class) CGRect  bounds;

/**
 UIScreen width
 */
@property (nonatomic, assign, readonly, class) CGFloat width;

/**
 UIScreen height
 */
@property (nonatomic, assign, readonly, class) CGFloat height;

/**
 UIScreen 相对于 6s 宽度比
 */
@property (nonatomic, assign, readonly, class) CGFloat scaleX;

/**
 UIScreen 相对于 6s 高度比
 */
@property (nonatomic, assign, readonly, class) CGFloat scaleY;

@end
