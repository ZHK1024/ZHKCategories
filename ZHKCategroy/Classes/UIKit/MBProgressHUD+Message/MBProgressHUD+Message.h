//
//  MBProgressHUD+Message.h
//  WeiQianDai
//
//  Created by ZHK on 2017/3/23.
//  Copyright © 2017年 Weiyu. All rights reserved.
//

#import <MBProgressHUD/MBProgressHUD.h>

@interface MBProgressHUD (Message)

+ (void)showTextMessage:(NSString *)messageText addTo:(UIView *)view afterDelay:(NSTimeInterval)delay;


@end
