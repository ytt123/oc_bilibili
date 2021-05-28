//
//  GRNetUtil.m
//  afnetworkingdemo
//
//  Created by yangtaotao on 2021/5/28.
//

#import "GRNetUtil.h"

@implementation GRNetUtil
+(instancetype)shareManager{
    static id  instance=nil;
    static  dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        NSURL*baseUrl=[NSURL URLWithString:@"http://192.168.2.202:9020/v1/user/"];
        NSURLSessionConfiguration*config=[NSURLSessionConfiguration defaultSessionConfiguration];
        instance=[[self alloc]initWithBaseURL:baseUrl sessionConfiguration:config];
    });
    return  instance;
}
@end
