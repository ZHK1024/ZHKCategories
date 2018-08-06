//
//  NSError+Description.m
//  WeiQianDai
//
//  Created by ZHK on 2017/4/20.
//  Copyright © 2017年 Weiyu. All rights reserved.
//

#import "NSError+Description.h"
#import <objc/runtime.h>

const void *hans_description_key = "hans_description_key";

@implementation NSError (Description)

+ (instancetype)errorWithCode:(ZHKError)code {
    return [NSError errorWithDomain:@"" code:code userInfo:nil];
}

+ (instancetype)errorWithCode:(ZHKError)code description:(NSString *)description {
    NSError *error = [NSError errorWithDomain:@"" code:code userInfo:nil];
    error.hans_description = description;
    return error;
}

- (NSString *)hans_description {
    switch (self.code) {
        case NSURLErrorUnknown://= 			-1,
            return @"未知错误";
        case NSURLErrorCancelled:// = 			-999,
            return @"任务取消";
        case NSURLErrorBadURL:// = 				-1000,
            return @"地址错误";
        case NSURLErrorTimedOut:// = 			-1001,
            return @"请求超时";
        case NSURLErrorUnsupportedURL:// = 			-1002,
            return @"地址错误";
        case NSURLErrorCannotFindHost:// = 			-1003,
            return @"域名无法解析";
        case NSURLErrorCannotConnectToHost:// = 		-1004,
            return @"连接失败";
        case NSURLErrorNetworkConnectionLost:// = 		-1005,
            return @"连接失败";
        case NSURLErrorDNSLookupFailed:// = 		-1006,
            return @"域名解析失败";
        case NSURLErrorHTTPTooManyRedirects:// = 		-1007,
            return @"重定向失败";
        case NSURLErrorResourceUnavailable:// = 		-1008,
            return @"资源请求你失败";
        case NSURLErrorNotConnectedToInternet:// = 		-1009,
            return @"网络不可用";
        case NSURLErrorRedirectToNonExistentLocation:// = 	-1010,
            return @"请求错误";
        case NSURLErrorBadServerResponse:// = 		-1011,
            return @"请求错误";
        case NSURLErrorUserCancelledAuthentication:// = 	-1012,
            return @"身份认证取消";
        case NSURLErrorUserAuthenticationRequired:// = 	-1013,
            return @"需要身份认证";
        case NSURLErrorZeroByteResource:// = 		-1014,
            return @"请求为空";
        case NSURLErrorCannotDecodeRawData:// =             -1015,
            return @"数据解析失败";
        case NSURLErrorCannotDecodeContentData:// =         -1016,
            return @"数据解析失败";
        case NSURLErrorCannotParseResponse:// =             -1017,
            return @"请求解析失败";
        case NSURLErrorAppTransportSecurityRequiresSecureConnection:// NS_ENUM_AVAILABLE(10_11, 9_0) = -1022,
            return @"ATS 错误";
        case NSURLErrorFileDoesNotExist:// = 		-1100,
            return @"资源不存在";
        case NSURLErrorFileIsDirectory:// = 		-1101,
            return @"资源访问错误";
        case NSURLErrorNoPermissionsToReadFile:// = 	-1102,
            return @"资源访问权限不足";
        case NSURLErrorDataLengthExceedsMaximum:// NS_ENUM_AVAILABLE(10_5, 2_0) =	-1103,
            return @"资源数据过长";
            
            // SSL errors
        case NSURLErrorSecureConnectionFailed:// = 		-1200,
            return @"无法建立安全连接";
        case NSURLErrorServerCertificateHasBadDate:// = 	-1201,
            return @"证书过期";
        case NSURLErrorServerCertificateUntrusted:// = 	-1202,
            return @"服务不可信";
        case NSURLErrorServerCertificateHasUnknownRoot:// = -1203,
            return @"证书未签署";
        case NSURLErrorServerCertificateNotYetValid:// = 	-1204,
            return @"服务证书无效";
        case NSURLErrorClientCertificateRejected:// = 	-1205,
            return @"服务被拒绝";
        case NSURLErrorClientCertificateRequired:// =	-1206,
            return @"连接需要身份认证";
        case NSURLErrorCannotLoadFromNetwork:// = 		-2000,
            return @"无法从网络获取数据";
            
            // Download and file I/O errors
        case NSURLErrorCannotCreateFile:// = 		-3000,
            return @"文件创建失败";
        case NSURLErrorCannotOpenFile:// = 			-3001,
            return @"文件打开失败";
        case NSURLErrorCannotCloseFile:// = 		-3002,
            return @"文件关闭失败";
        case NSURLErrorCannotWriteToFile:// = 		-3003,
            return @"文件写入失败";
        case NSURLErrorCannotRemoveFile:// = 		-3004,
            return @"文件删除失败";
        case NSURLErrorCannotMoveFile:// = 			-3005,
            return @"文件转移失败";
        case NSURLErrorDownloadDecodingFailedMidStream:// = -3006,
            return @"文件解码失败";
        case NSURLErrorDownloadDecodingFailedToComplete:// =-3007,
            return @"文件解码失败";
            
        case NSURLErrorInternationalRoamingOff:// NS_ENUM_AVAILABLE(10_7, 3_0) =         -1018,
            return @"";
        case NSURLErrorCallIsActive:// NS_ENUM_AVAILABLE(10_7, 3_0) =                    -1019,
            return @"网络环境不支持同时进行电话和数据通信";
        case NSURLErrorDataNotAllowed:// NS_ENUM_AVAILABLE(10_7, 3_0) =                  -1020,
            return @"连接被禁止";
        case NSURLErrorRequestBodyStreamExhausted:// NS_ENUM_AVAILABLE(10_7, 3_0) =      -1021,
            return @"网络环境不支持该请求";
            
        case NSURLErrorBackgroundSessionRequiresSharedContainer:// NS_ENUM_AVAILABLE(10_10, 8_0) = -995,
            return @"";
        case NSURLErrorBackgroundSessionInUseByAnotherProcess:// NS_ENUM_AVAILABLE(10_10, 8_0) = -996,
            return @"";
        case NSURLErrorBackgroundSessionWasDisconnected:// NS_ENUM_AVAILABLE(10_10, 8_0)= -997,
            return @"";
            
            // ZHK custom error
        case ZHKErrorNil:
            return @"请求异常";
        case ZHKErrorException:
            return @"数据解析异常";
        case ZHKErrorCustom:
            return objc_getAssociatedObject(self, hans_description_key);
        default:
            return objc_getAssociatedObject(self, hans_description_key) ? : @"未知错误";
    }
}

- (void)setHans_description:(NSString *)hans_description {
    objc_setAssociatedObject(self, hans_description_key, hans_description, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

@end
