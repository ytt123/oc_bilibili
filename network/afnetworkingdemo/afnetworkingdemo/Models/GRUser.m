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
@implementation GRUser

+(instancetype)userWithDict:(NSDictionary*)dic{
    GRUser *user=[[GRUser alloc]init];
    GRUserInfo*info=[GRUserInfo userInfoWithDict:dic[@"user"]];
    GRUseToken*token=[GRUseToken  userTokenWithDict:dic[@"token_info"]];
    user.info=info;
    user.token=token;
    return user;
    
}
//-(void)setValue:(id)value forUndefinedKey:(NSString *)key{}
+(void)userWithSuccess:(void (^)(GRUser*user))success fail:(void(^)(NSError*err))fail{
//    GRNetUtil
}


@end
