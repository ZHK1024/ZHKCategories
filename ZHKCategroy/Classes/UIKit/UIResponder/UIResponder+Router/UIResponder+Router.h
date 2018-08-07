//
//  UIResponder+Router.h
//  Platform
//
//  Created by ZHK on 2018/5/21.
//Copyright © 2018年 ZHK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (Router)

- (void)routerEventName:(NSString *)eventName userInfo:(NSDictionary *)userInfo;

@end
