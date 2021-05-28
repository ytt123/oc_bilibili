//
//  GRNews.m
//  afnetworkingdemo
//
//  Created by yangtaotao on 2021/5/28.
//

#import "GRNews.h"
#import "GRNetUtil.h"
@implementation GRNews
+(instancetype)newsWithDict:(NSDictionary*)dic{
    GRNews *item=[[GRNews alloc]init];
    [item setValuesForKeysWithDictionary:dic];
    return  item;
}
-(void)setValue:(id)value forUndefinedKey:(NSString *)key{
}
+(void)newsWithSuccess:(void (^)(NSArray*arr))success fail:(void(^)(NSError *err))fail{
    [[GRNetUtil shareManager] GET:@"ad/headline/0-4.html" parameters:nil headers:@{} progress:^(NSProgress * _Nonnull downloadProgress) {
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSMutableArray*array=[NSMutableArray array];
            NSArray *resArray= responseObject[@"headline_ad"];
            [resArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
                GRNews *item=[self newsWithDict:obj];
                [array addObject:item];
                
            }];
          
            
            if(success){
                success(array);
            }
       
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"%@",error);
            if(fail){
                fail(error);
            }
        }];
}
@end
