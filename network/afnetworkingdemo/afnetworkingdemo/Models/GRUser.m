//
//  GRUser.m
//  afnetworkingdemo
//
//  Created by yangtaotao on 2021/5/28.
//

#import "GRUser.h"
#import "GRNetUtil.h"
#import "GRUseToken.h"
#import "GRUserInfo.h"
#import <MJExtension/MJExtension.h>
@implementation GRUser

//+(instancetype)userWithDict:(NSDictionary*)dic{
//    GRUser *user=[[GRUser alloc]init];
//    GRUserInfo*info=[GRUserInfo userInfoWithDict:dic[@"user"]];
//    GRUseToken*token=[GRUseToken  userTokenWithDict:dic[@"token_info"]];
//    user.info=info;
//    user.token=token;
//    return user;
//
//}
////-(void)setValue:(id)value forUndefinedKey:(NSString *)key{}
+(void)userWithSuccess:(void (^)(GRUser*user))success fail:(void(^)(NSError*err))fail{
    [[GRNetUtil shareManager] POST:@"accounts/login" parameters:@{@"mobile":@"18238770746",@"code":@"123",@"login_way":@"MOBILE_CODE"} headers:@{@"Request-Source":@"user",@"Client-Type":@"app"} progress:^(NSProgress * _Nonnull uploadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSLog(@"%@",responseObject[@"msg"]);
            if(success){
                
                GRUser*user=[ GRUser mj_objectWithKeyValues:responseObject[@"data"]];
                success(user);
            }
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
          
            if(fail){
                fail(error);
            }
        }];
}


@end
