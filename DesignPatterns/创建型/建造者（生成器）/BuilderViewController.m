//
//  BuilderViewController.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import "BuilderViewController.h"

#import "ChasingGame.h"

#import "Builder.h"
#import "Engine.h"
#import "YEngine.h"
#import "Wheels.h"
#import "Door.h"

@interface BuilderViewController ()

@property (nonatomic, strong) Builder *builder;

@end

@implementation BuilderViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建组装者
    self.builder = [[Builder alloc] init];
    
    // 指定承包商
    self.builder.engine = [[YEngine alloc] init];
    self.builder.wheels = [[Wheels alloc] init];
    self.builder.door   = [[Door alloc] init];
    
    // 构建所有的部件
    [self.builder buildAllParts];
    
    // 获取产品
    NSLog(@"%@", self.builder.productsInfo);
    
//    CharacterBuilder *characterBuilder = [[StandardCharacterBuilder alloc] init];
//    ChasingGame *game = [[ChasingGame alloc] init];
//    Character *player = [game createPlayer:characterBuilder];
//    Character *enemy = [game createEnemy:characterBuilder];
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
