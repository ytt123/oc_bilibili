//
//  GRUserInfo.h
//  afnetworkingdemo
//
//  Created by yangtaotao on 2021/5/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GRUserInfo : NSObject
@property (nonatomic,assign) int id;
@property (nonatomic,strong) NSString* uuid;

+(instancetype)userInfoWithDict:(NSDictionary*)dic;
@end

NS_ASSUME_NONNULL_END
