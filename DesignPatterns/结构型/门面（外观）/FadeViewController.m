//
//  FadeViewController.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/12.
//

#import "FadeViewController.h"
#import "ShapeMaker.h"

@interface FadeViewController ()

@end

@implementation FadeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 绘制一个圆的操作
    [ShapeMaker drawCircleWithParas:@{@"a" : @"b"}];
    
    // 绘制圆 + 矩形操作
    [ShapeMaker drawCircleAndRectangle:@{@"a" : @"b", @"c" : @"d"}];
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
