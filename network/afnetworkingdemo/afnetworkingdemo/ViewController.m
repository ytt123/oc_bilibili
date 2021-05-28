//
//  ViewController.m
//  afnetworkingdemo
//
//  Created by yangtaotao on 2021/5/28.
//

#import "ViewController.h"
#import "GRNetUtil.h"
#import "GRNews.h"
#import "GRUser.h"
@import AFNetworking;
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];


}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
//    [self getWebSpecial];
//    [GRNews newsWithSuccess:^(NSArray * _Nonnull arr) {
//        NSLog(@"%@",arr);
//        } fail:^(NSError*err){
//            NSLog(@"错了");
//        }];
//
    [self login];
}


-(void)login{
    GRUser*user=[GRUser userWithDict:@{
        @"user": @{
          
                @"mobile": @"18238770746",
                @"name": @"",
                @"nick_name": @"18238770746",
           
        },
        @"token_info": @{
                @"token": @"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzb3VyY2UiOiJ1c2VyIiwiY2xpZW50X3R5cGUiOiJhcHAiLCJ1c2VyX3R5cGUiOiJVU0VSIiwiYWNjb3VudF91dWlkIjoiMmFhM2NkOTktOWEyYS0zOTMwLTY0OGUtNzIwZDllOTM1NDE1IiwidXNlcl91dWlkIjoiNzJmY2RlNTMtYzQxNS0yNmUwLTdmNGItYzA2MmU1NmUxNmRhIiwidXNlcl9tb2JpbGUiOiIxODIzODc3MDc0NiIsInVzZXJfcm9sZV91dWlkIjoiIiwiY3JlYXRlX2F0IjoxNjIyMTk1Mjg4LCJ1cGRhdGVfYXQiOjE2MjIxOTUyODgsImV4cCI6MTYyMjkxNTI4OH0.pm8l00sAzbFXYPNSX-jLqiNeW6ZOqfQORpKG_fEoCz4",
                @"refresh_token": @"88b24aa2c6e1019b513b60123d526c05",
                @"token_id": @"190b161d752c9b12f8e7fa8099411e1b"
        }
    }];
    NSLog(@"user%@",user);
    
}
-(void)postWebWithUpload{
    
    NSMutableURLRequest *request = [[AFHTTPRequestSerializer serializer] multipartFormRequestWithMethod:@"POST" URLString:@"http://127.0.0.1/php/upload/upload-m.php" parameters:@{@"username":@"zhangsan"} constructingBodyWithBlock:^(id<AFMultipartFormData> formData) {
            [formData appendPartWithFileURL:[[NSBundle mainBundle] URLForResource:@"icon2.png" withExtension:nil] name:@"file" fileName:@"filename.jpg" mimeType:@"image/png" error:nil];
        } error:nil];

    AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:[NSURLSessionConfiguration defaultSessionConfiguration]];

    NSURLSessionUploadTask *uploadTask;
    uploadTask = [manager
                  uploadTaskWithStreamedRequest:request
                  progress:^(NSProgress * _Nonnull uploadProgress) {
                      // This is not called back on the main queue.
                      // You are responsible for dispatching to the main queue for UI updates
//                      dispatch_async(dispatch_get_main_queue(), ^{
//                          //Update the progress view
//                          [progressView setProgress:uploadProgress.fractionCompleted];
//                      });
                  }
                  completionHandler:^(NSURLResponse * _Nonnull response, id  _Nullable responseObject, NSError * _Nullable error) {
                      if (error) {
                          NSLog(@"Error: %@", error);
                      } else {
                          NSLog(@"%@ %@", response, responseObject);
                      }
                  }];

    [uploadTask resume];
    
}

-(void)postWeb{
    
    
//    NSString *URLString = @"http://127.0.0.1/php/login.php";
    NSDictionary *parameters = @{@"username":@"abcd",@"password":@"lalala"};
   
    

    [[AFHTTPSessionManager manager] POST:@"php/login.php" parameters:parameters headers:@{} progress:^(NSProgress * _Nonnull uploadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSLog(@"2222%@",responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"3333%@",error);
        }];
    
}
-(void)getWebwithParams{
    
    NSString *URLString = @"http://127.0.0.1/php/login.php";
    NSDictionary *parameters = @{@"username":@"abc",@"password":@"123"};
        [[AFHTTPRequestSerializer serializer] requestWithMethod:@"GET" URLString:URLString parameters:nil error:nil];
    
    [[AFHTTPSessionManager manager]  GET:URLString parameters:parameters headers:@{} progress:^(NSProgress * _Nonnull downloadProgress) {
            NSLog(@"1111%@",downloadProgress);
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSLog(@"2222%@",responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"3333%@",error);
        }];
    
}
-(void)getWebWithoutParams{
    
    NSString *URLString = @"http://127.0.0.1/demo.json";
//
    
    [[AFHTTPSessionManager manager]  GET:URLString parameters:nil headers:@{} progress:^(NSProgress * _Nonnull downloadProgress) {
            NSLog(@"1111%@",downloadProgress);
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSLog(@"2222%@",responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"3333%@",error);
        }];
    
}

-(void)getWebSpecial{
    
    NSString *URLString = @"ad/headline/0-4.html";
//
    
    [[GRNetUtil shareManager]  GET:URLString parameters:nil headers:@{} progress:^(NSProgress * _Nonnull downloadProgress) {
            NSLog(@"1111%@",downloadProgress);
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            NSLog(@"2222%@",responseObject);
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            NSLog(@"3333%@",error);
        }];
    
}




//
//-(void)postWebWithUpload{
//
//    NSURL*img1=[[NSBundle mainBundle] URLForResource:@"icon1.png" withExtension:nil];
//    NSURL*img2=[[NSBundle mainBundle] URLForResource:@"icon2.png" withExtension:nil];
//
//    NSString *URLString = @"http://127.0.0.1/php/upload/upload-m.php";
//    NSDictionary *parameters = @{@"username":@"zhangsan"};
//
//
//
//    [[AFHTTPSessionManager manager] POST:URLString parameters:parameters headers:@{} constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
//
//        //todo
//        //上传文件
//        [formData appendPartWithFileURL:img1 name:@"" error:nil];
//        [formData appendPartWithFileURL:img2 name:@"" error:nil];
//
//
//    } progress:^(NSProgress * _Nonnull uploadProgress) {
//
//    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
//        NSLog(@"2222%@",responseObject);
//    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
//        NSLog(@"3333%@",error);
//    }];
//
//}

@end
