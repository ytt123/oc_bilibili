//
//  GRUserInfo.m
//  afnetworkingdemo
//
//  Created by yangtaotao on 2021/5/28.
//

#import "GRUserInfo.h"

@implementation GRUserInfo

+(instancetype)userInfoWithDict:(NSDictionary*)dic{
    GRUserInfo *userinfo=[[GRUserInfo alloc]init];
    [userinfo setValuesForKeysWithDictionary:dic];
    return userinfo;
    
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{}
@end
