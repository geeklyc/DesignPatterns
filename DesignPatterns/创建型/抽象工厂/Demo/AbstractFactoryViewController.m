//
//  AbstractFactoryViewController.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import "AbstractFactoryViewController.h"

#import "ToolBarFactory.h"

@interface AbstractFactoryViewController ()

@end

@implementation AbstractFactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    ToolBarFactory *toolBarFactory = [ToolBarFactory factoryWithType:2];
    UIView *toolView = [toolBarFactory toolView];
    UIButton *tagButton = [toolBarFactory tagButton];
    
    toolView.frame = CGRectMake(100, 100, 100, 100);
    tagButton.frame = CGRectMake(100, 400, 100, 100);
    
    [self.view addSubview:toolView];
    [self.view addSubview:tagButton];
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
