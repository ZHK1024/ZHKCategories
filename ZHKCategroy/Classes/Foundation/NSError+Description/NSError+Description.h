//
//  NSError+Description.h
//  WeiQianDai
//
//  Created by ZHK on 2017/4/20.
//  Copyright © 2017年 Weiyu. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ZHKError) {
    ZHKErrorNil = 6000,
    ZHKErrorException,
    ZHKErrorCustom
};

@interface NSError (Description)

@property (nonatomic, strong) NSString *hans_description;

+ (instancetype)errorWithCode:(ZHKError)code;

+ (instancetype)errorWithCode:(ZHKError)code description:(NSString *)description;

@end
