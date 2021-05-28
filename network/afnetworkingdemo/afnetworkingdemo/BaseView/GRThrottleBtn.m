//
//  GRThrottleBtn.m
//  afnetworkingdemo
//
//  Created by yangtaotao on 2021/5/28.
//

#import "GRThrottleBtn.h"
@interface GRThrottleBtn ()
@property (nonatomic,strong) id myGCDTimer;
//@property (nonatomic,assign) bool isopen;
@end
@implementation GRThrottleBtn
//
//-(instancetype)initWithFrame:(CGRect)frame{
//    if(self=[super initWithFrame:frame]){
//        self.isopen=true;
//        [self addTarget:nil action:@selector(Click:) forControlEvents:UIControlEventTouchUpInside];
//    }
//    return  self;
//}
//-(void)Click:(UIButton*)btn{
//
//    dispatch_queue_attr_t attr = dispatch_queue_attr_make_with_qos_class(DISPATCH_QUEUE_SERIAL, QOS_CLASS_USER_INITIATED, 0);
//    /// 创建GCD timer
//    self.myGCDTimer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, dispatch_queue_create("com.icetime.mygcdtimer", attr));
//    /// 设置timer
//    uint64_t interval = 1 * NSEC_PER_SEC;
//    dispatch_source_set_timer(self.myGCDTimer, DISPATCH_TIME_NOW, interval, 0);
//    /// 设置timer的执行函数
//    dispatch_source_set_event_handler(self.myGCDTimer, ^{
//        NSLog(@"com.icetime.mygcdtimer");
//        self.is
//    });
//    /// 启动timer
//    dispatch_resume(self.myGCDTimer);
//
//}


@end
