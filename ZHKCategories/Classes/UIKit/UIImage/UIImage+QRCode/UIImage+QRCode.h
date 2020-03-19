//
//  UIImage+QRCode.h
//  QRCode
//
//  Created by ZHK on 2017/2/23.
//  Copyright © 2017年 Weiyu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (QRCode)

/**
 根据字符串获取二维码
 
 @param text 需要转换的字符串
 @param size 图片尺寸
 @return  Image
 */
+ (UIImage *)QRCodeWithCodeText:(NSString *)text imageSize:(CGFloat)size;

/**
 获取图片二维码信息

 @return 信息
 */
- (NSString *)QRCodeMessgae;

/**
 把黑白图片转换为制定颜色图片
 
 @param image 需要转换的图片
 @param red   红色 (0~255)
 @param green 绿色 (0~255)
 @param blue  蓝色 (0~255)
 @return 转换结果
 */
+ (UIImage *)imageBlackToTransparent:(UIImage *)image withRed:(CGFloat)red andGreen:(CGFloat)green andBlue:(CGFloat)blue;

@end
