//
//  GRUseToken.h
//  afnetworkingdemo
//
//  Created by yangtaotao on 2021/5/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GRUseToken : NSObject
@property (nonatomic,strong) NSString* token;
+(instancetype)userTokenWithDict:(NSDictionary*)dic;
@end

NS_ASSUME_NONNULL_END
