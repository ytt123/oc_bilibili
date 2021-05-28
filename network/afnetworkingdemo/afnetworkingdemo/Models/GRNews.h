//
//  GRNews.h
//  afnetworkingdemo
//
//  Created by yangtaotao on 2021/5/28.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface GRNews : NSObject
@property (nonatomic,strong) NSString* title;
@property (nonatomic,strong) NSString* imgsrc;

//typedef void (^EBCountDownButtonBlock)(BOOL finished);
//@property (nonatomic,strong) void (^likeBlock) (void);
//+ (void)headlinesWithSuccess:(void(^)(NSArray *array))success error:(void(^)())error;



//@property (nonatomic,strong) void(^hhblock)(NSInteger i);
//@property (nonatomic,strong) void(^hhblock)(void);
//typedef void (^successBlock)(NSArray*arr);
//+(void)newsWithSuccess:(successBlock)success fail:(void(^)(NSError*err))fail;


+(instancetype)newsWithDict:(NSDictionary*)dic;
+(void)newsWithSuccess:(void (^)(NSArray*arr))success fail:(void(^)(NSError*err))fail;
@end

NS_ASSUME_NONNULL_END
