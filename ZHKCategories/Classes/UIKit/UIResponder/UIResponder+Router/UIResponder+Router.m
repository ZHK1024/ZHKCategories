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

///  利用响应链原理传递字典
/// @param eventTag  事件标识
/// @param userInfo  传输数据字典
- (void)routerEventTag:(NSInteger)eventTag userInfo:(NSDictionary *)userInfo {
    [[self nextResponder] routerEventTag:eventTag userInfo:userInfo];
}

/// 利用响应链传递对象
/// @param eventName 事件名称
/// @param object    对象
- (void)routerEventName:(NSString *)eventName object:(NSObject *)object {
    [[self nextResponder] routerEventName:eventName object:object];
}

/// 利用响应链传递对象
/// @param eventTag  事件标识
/// @param object    对象
- (void)routerEventTag:(NSInteger)eventTag object:(NSObject *)object {
    [[self nextResponder] routerEventTag:eventTag object:object];
}

@end
