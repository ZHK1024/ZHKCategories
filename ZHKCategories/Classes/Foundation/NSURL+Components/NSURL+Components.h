//
//  NSURL+Components.h
//  Pods
//
//  Created by ZHK on 2018/8/30.
//
//

#import <Foundation/Foundation.h>

@interface NSURL (Components)

/**
 URL 尾部参数
 */
@property (nonatomic, strong, readonly) NSDictionary *parameters;

@end
