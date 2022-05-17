//
//  YXBridgeDemoViewController.m
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/17.
//

#import "YXBridgeDemoViewController.h"

#import "YXPSPSystem.h"
#import "YXGBASystem.h"
#import "YXPSPImplementor.h"
#import "YXGBAImplementor.h"

@interface YXBridgeDemoViewController ()

@end

@implementation YXBridgeDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // GBA系统 + GBA执行器
    YXAbstractSystem *gbaSystem = [[YXGBASystem alloc] init];
    gbaSystem.implementor     = [[YXGBAImplementor alloc] init];
    
    [gbaSystem loadSystem];
    [gbaSystem command_up];
    
    // PSP系统 + PSP执行器
    YXPSPSystem *pspSystem  = [[YXPSPSystem alloc] init];
    pspSystem.implementor = [[YXPSPImplementor alloc] init];
    
    [pspSystem loadSystem];
    [pspSystem command_x];
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
