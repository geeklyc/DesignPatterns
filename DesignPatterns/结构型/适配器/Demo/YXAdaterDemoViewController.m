//
//  YXAdaterDemoViewController.m
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/13.
//

#import "YXAdaterDemoViewController.h"

#import "YXNewRequest1.h"
#import "YXNewRequest2.h"

@interface YXAdaterDemoViewController ()

@end

@implementation YXAdaterDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // 类适配器
//    id<YXRequest> request = [YXNewRequest1 new];
//    [request start];
    
    // 对象适配器
    id<YXRequest> request = [YXNewRequest2 new];
    [request start];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
