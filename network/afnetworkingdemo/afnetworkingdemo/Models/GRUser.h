//
//  GRUser.h
//  afnetworkingdemo
//
//  Created by yangtaotao on 2021/5/28.
//

#import <Foundation/Foundation.h>
@class  GRUserInfo;
@class  GRUseToken;
//@class  GRUser;
NS_ASSUME_NONNULL_BEGIN

@interface GRUser : NSObject

@property (nonatomic,strong) GRUserInfo *info;

@property (nonatomic,strong) GRUseToken *token;


+(instancetype)userWithDict:(NSDictionary*)dic;
+(void)userWithSuccess:(void (^)(GRUser*user))success fail:(void(^)(NSError*err))fail;



@end

NS_ASSUME_NONNULL_END
