//
//  NSString+Distinguish.m
//  WeiQianDai
//
//  Created by ZHK on 2017/3/15.
//  Copyright © 2017年 Weiyu. All rights reserved.
//

#import "NSString+Distinguish.h"

//static NSString *phoneRegex = @"(13\\d|14[57]|15[^4,\\D]|17[3678]|18\\d)\\d{8}|170[059]\\d{7}";
static NSString *phoneRegex = @"[1][345789]\\d{9}";

@implementation NSString (Distinguish)

/**
 字符串本身是否是手机号
 
 @return  识别结果
 */
- (BOOL)isPhoneNumber {
    NSRange range = [self rangeOfString:phoneRegex options:NSRegularExpressionSearch];
    if (NSEqualRanges(range, NSMakeRange(0, 11))) {
        // 手机号正确
        return YES;
    }
    return NO;
}

/**
 截取手机号

 @return 手机号
 */
- (NSString *)getPhoneNumber {
    NSRange range = [self rangeOfString:phoneRegex options:NSRegularExpressionSearch];
    if (range.length) {
        return [self substringWithRange:range];
    }
    return nil;
}

/**
 字符串本身是否是纯数字
 
 @return 识别结果
 */
- (BOOL)isNumber {
    return [self rangeOfString:@"^[0-9]+$" options:NSRegularExpressionSearch].length == self.length;
}

- (BOOL)checkBankCardNumber {
    int oddSum = 0;     // 奇数和
    int evenSum = 0;    // 偶数和
    int allSum = 0;     // 总和
    
    // 循环加和
    for (NSInteger i = 1; i <= self.length; i++)
    {
        NSString *theNumber = [self substringWithRange:NSMakeRange(self.length-i, 1)];
        int lastNumber = [theNumber intValue];
        if (i%2 == 0)
        {
            // 偶数位
            lastNumber *= 2;
            if (lastNumber > 9)
            {
                lastNumber -=9;
            }
            evenSum += lastNumber;
        }
        else
        {
            // 奇数位
            oddSum += lastNumber;
        }
    }
    allSum = oddSum + evenSum;
    // 是否合法
    if (allSum%10 == 0)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

@end
