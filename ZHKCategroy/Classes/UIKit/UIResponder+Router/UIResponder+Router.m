//
//  UIResponder+Router.m
//  Platform
//
//  Created by ZHK on 2018/5/21.
//Copyright © 2018年 ZHK. All rights reserved.
//

#import "UIResponder+Router.h"

@implementation UIResponder (Router)

- (void)routerEventName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    [[self nextResponder] routerEventName:eventName userInfo:userInfo];
}

@end
