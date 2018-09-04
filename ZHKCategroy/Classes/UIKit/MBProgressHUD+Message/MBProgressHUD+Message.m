//
//  MBProgressHUD+Message.m
//  WeiQianDai
//
//  Created by ZHK on 2017/3/23.
//  Copyright © 2017年 Weiyu. All rights reserved.
//

#import "MBProgressHUD+Message.h"

@implementation MBProgressHUD (Message)

+ (void)showTextMessage:(NSString *)messageText addTo:(UIView *)view afterDelay:(NSTimeInterval)delay {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:NO];
    hud.mode = MBProgressHUDModeText;
    hud.labelText = messageText;
    [hud hide:YES afterDelay:delay];
}


@end
