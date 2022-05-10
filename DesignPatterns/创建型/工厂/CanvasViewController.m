//
//  CanvasViewController.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/3/31.
//

#import "CanvasViewController.h"

#import "CanvasViewGenerator.h"
#import "CanvasView.h"

#import "ClothCanvasViewGenerator.h"

@interface CanvasViewController ()

@property (nonatomic, strong) CanvasView *canvasView;
@property (nonatomic, strong) UIButton *changeButton;

@end

@implementation CanvasViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    CanvasViewGenerator *defaultGenerator = [[CanvasViewGenerator alloc] init];
    [self loadCanvasViewWithGenerator:defaultGenerator];
    
    
    [self.view addSubview:self.changeButton];
    
    self.changeButton.frame = CGRectMake(100, 100, 100, 100);
}

- (void)changeClicked {
    CanvasViewGenerator *clothGenerator = [[ClothCanvasViewGenerator alloc] init];
    [self loadCanvasViewWithGenerator:clothGenerator];
}

- (void)loadCanvasViewWithGenerator:(CanvasViewGenerator *)generator {
    
    [self.canvasView removeFromSuperview];
    CGRect aFrame = self.view.bounds;
    CanvasView *canvasView = [generator canvasViewWithFrame:aFrame];
    [self.view addSubview:canvasView];
    self.canvasView = canvasView;
}

- (UIButton *)changeButton {
    if (!_changeButton) {
        _changeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _changeButton.backgroundColor = [UIColor greenColor];
        [_changeButton setTitle:@"更换背景" forState:UIControlStateNormal];
        [_changeButton addTarget:self action:@selector(changeClicked) forControlEvents:UIControlEventTouchUpInside];
    }
    return _changeButton;
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
