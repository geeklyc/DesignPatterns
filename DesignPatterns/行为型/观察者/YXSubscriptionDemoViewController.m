//
//  YXSubscriptionDemoViewController.m
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/18.
//

#import "YXSubscriptionDemoViewController.h"

#import "YXSubscriptionServiceCenter.h"

static NSString *SCIENCE = @"SCIENCE";

@interface YXSubscriptionDemoViewController ()
<YXSubscriptionServiceCenterProtocol>

@end

@implementation YXSubscriptionDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建订阅号
    [YXSubscriptionServiceCenter createSubscriptionNumber:SCIENCE];
    
    // 添加订阅的用户到指定的刊物
    [YXSubscriptionServiceCenter addCustomer:self
                    withSubscriptionNumber:SCIENCE];
    
    // 发行机构发送消息
    [YXSubscriptionServiceCenter sendMessage:@"V1.0" toSubscriptionNumber:SCIENCE];
}

- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber {

    NSLog(@"%@  %@", message, subscriptionNumber);
}

@end
