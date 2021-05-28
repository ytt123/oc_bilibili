//
//  GRNetUtil.h
//  afnetworkingdemo
//
//  Created by yangtaotao on 2021/5/28.
//

#import <AFNetworking/AFNetworking.h>

NS_ASSUME_NONNULL_BEGIN

@interface GRNetUtil : AFHTTPSessionManager
+(instancetype)shareManager;
@end

NS_ASSUME_NONNULL_END
