//
//  UIResponder+Router.h
//  Platform
//
//  Created by ZHK on 2018/5/21.
//Copyright © 2018年 ZHK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (Router)

///  利用响应链原理传递字典
/// @param eventName 事件名称
/// @param userInfo  传输数据字典
- (void)routerEventName:(NSString *)eventName userInfo:(NSDictionary *)userInfo;

///  利用响应链原理传递字典
/// @param eventTag  事件标识
/// @param userInfo  传输数据字典
- (void)routerEventTag:(NSInteger)eventTag userInfo:(NSDictionary *)userInfo;

/// 利用响应链传递对象
/// @param eventName 事件名称
/// @param object    对象
- (void)routerEventName:(NSString *)eventName object:(NSObject *)object;

/// 利用响应链传递对象
/// @param eventTag  事件标识
/// @param object    对象
- (void)routerEventTag:(NSInteger)eventTag object:(NSObject *)object;

@end
