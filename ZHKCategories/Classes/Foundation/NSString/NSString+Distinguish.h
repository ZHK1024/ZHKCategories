//
//  NSString+Distinguish.h
//  WeiQianDai
//
//  Created by ZHK on 2017/3/15.
//  Copyright © 2017年 Weiyu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Distinguish)

/**
 字符串本身是否是手机号

 @return  识别结果
 */
- (BOOL)isPhoneNumber;

/**
 字符串本身是否是纯数字

 @return 识别结果
 */
- (BOOL)isNumber;

/**
 截取手机号
 
 @return 手机号
 */
- (NSString *)getPhoneNumber;

- (BOOL)checkBankCardNumber;

@end
