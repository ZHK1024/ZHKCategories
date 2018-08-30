//
//  NSURL+Components.m
//  Pods
//
//  Created by ZHK on 2018/8/30.
//
//

#import "NSURL+Components.h"

@implementation NSURL (Components)

/**
 URL 尾部参数
 */
- (NSDictionary *)parameters {
    if (self.query.length == 0) {
        return @{};
    }
    NSMutableDictionary *params = [NSMutableDictionary new];
    NSURLComponents *components = [[NSURLComponents alloc] initWithString:self.absoluteString];
    for (NSURLQueryItem *item in components.queryItems) {
        params[item.name] = item.value;
    }
    return [params copy];
}

@end
