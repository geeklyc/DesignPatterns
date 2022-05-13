//
//  PrototypeVC.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import "YXPrototypeViewController.h"

#import "YXNode.h"
#import "YXSubNode.h"

@interface YXPrototypeViewController ()

@end

@implementation YXPrototypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    YXSubNode *subNode1 = [[YXSubNode alloc] init];
    subNode1.name =  @"子节点1";
    
    YXSubNode *subNode2 = [[YXSubNode alloc] init];
    subNode2.name =  @"子节点2";
    
    YXNode *node = [[YXNode alloc] init];
    node.name = @"姓名";
    node.address  = @"深圳市";
    node.list = @[
        subNode1,
        subNode2,
    ];
    
    YXNode *node1 = [node copy];
    
    node.name = @"新名字";
    node.list[0].name = @"新子节点";
    
    [self printNode:node];
    [self printNode:node1];
}

- (void)printNode:(YXNode *)node {
    NSLog(@"name %@\n", node.name);
    NSLog(@"address %@\n", node.name);
    NSLog(@"list %@ - %@\n", node.list[0], node.list[1]);
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
