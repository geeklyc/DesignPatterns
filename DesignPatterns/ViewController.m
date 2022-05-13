//
//  ViewController.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/3/25.
//

#import "ViewController.h"

#import "PrototypeViewController.h"
#import "CanvasViewController.h"
#import "AbstractFactoryViewController.h"
#import "BuilderViewController.h"
#import "YXDataManager.h"

#import "FadeViewController.h"

#import "YXAdaterDemoViewController.h"

//#import "MVVMDemoVC.h"
//#import "MVCDemoVC.h"

@interface ViewController ()
<UITableViewDelegate,
UITableViewDataSource>

@property (nonatomic, strong) NSArray *listArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITalbeViewCell"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return [self.listArray count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSDictionary *dict = self.listArray[section];
    NSArray *array = dict[@"list"];
    return [array count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"UITalbeViewCell" forIndexPath:indexPath];
    NSDictionary *dict = self.listArray[indexPath.section];
    NSArray *array = dict[@"list"];
    cell.textLabel.text = array[indexPath.row];
    return cell;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSDictionary *dict = self.listArray[section];
    return dict[@"name"];
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
//        if (indexPath.row == 0) {
//            MVCDemoVC *vc = [[MVCDemoVC alloc] init];
//            [self presentViewController:vc animated:YES completion:nil];
//        } else if (indexPath.row == 1) {
//            MVVMDemoVC *vc = [[MVVMDemoVC alloc] init];
//            [self presentViewController:vc animated:YES completion:nil];
//        }
    } else if (indexPath.section == 1) {
        if (indexPath.row == 0) {
            PrototypeViewController *vc = [[PrototypeViewController alloc] init];
            [self presentViewController:vc animated:YES completion:nil];
        }
        
        if (indexPath.row == 1) {
            CanvasViewController *vc = [[CanvasViewController alloc] init];
            [self presentViewController:vc animated:YES completion:nil];
        }
        
        if (indexPath.row == 2) {
            AbstractFactoryViewController *vc = [[AbstractFactoryViewController alloc] init];
            [self presentViewController:vc animated:YES completion:nil];
        }
        
        if (indexPath.row == 3) {
            BuilderViewController *vc = [[BuilderViewController alloc] init];
            [self presentViewController:vc animated:YES completion:nil];
        }
        
        if (indexPath.row == 4) {
            YXDataManager *manager1 = [YXDataManager shareManager];
            YXDataManager *manager2 = [YXDataManager shareManager];
            YXDataManager *manager3 = [YXDataManager new];
            YXDataManager *manager4 = [YXDataManager new];
            NSLog(@"单例 %p-%p-%p-%p-%p", manager1, manager2, manager3, manager4, [manager1 copy]);
//            [DataManager managerCenter].score = 10;
//            NSLog(@"单例分数 %ld", (long)[DataManager managerCenter].score);
        }
    } else if(indexPath.section == 2) {
        if (indexPath.row == 4) {
            FadeViewController *vc = [[FadeViewController alloc] init];
            [self presentViewController:vc animated:YES completion:nil];
        }
        
        if (indexPath.row == 3) {
            YXAdaterDemoViewController *vc = [[YXAdaterDemoViewController alloc] init];
            [self.navigationController pushViewController:vc animated:YES];
        }
    }
}

// MARK: - getters and setters

- (NSArray *)listArray {
    
    if (!_listArray) {
        
        _listArray = @[ @{
                            @"name": @"架构",
                            @"list": @[
                                    @"MVC", @"MVVM"
                            ],
        },@{
                            @"name": @"创建型",
                            @"list": @[
                                    @"原型", @"工厂", @"抽象工厂", @"建造者（生成器）", @"单例"
                            ],
        },@{
                            @"name": @"结构型",
                            @"list": @[
                                    @"代理", @"桥接", @"装饰", @"【已完成】适配器", @"门面（外观）", @"组合", @"享元"
                            ],
        },@{
                            @"name": @"行为型",
                            @"list": @[
                                    @"观察者", @"模板", @"策略", @"职责", @"状态", @"迭代器", @"访问者", @"备忘录", @"命令", @"解释器", @"中介者"
                            ],
        } ];
    }
    return _listArray;
}


@end
