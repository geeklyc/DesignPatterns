//
//  PrototypeVC.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import "PrototypeViewController.h"

#import "Node.h"
#import "SubNode.h"

@interface PrototypeViewController ()

@end

@implementation PrototypeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    SubNode *subNode1 = [[SubNode alloc] init];
    subNode1.name =  @"子节点1";
    
    SubNode *subNode2 = [[SubNode alloc] init];
    subNode2.name =  @"子节点2";
    
    Node *node = [[Node alloc] init];
    node.name = @"姓名";
    node.address  = @"深圳市";
    node.list = @[
        subNode1,
        subNode2,
    ];
    
    Node *node1 = [node copy];
    
    node.name = @"新名字";
    node.list[0].name = @"新子节点";
    
    [self printNode:node];
    [self printNode:node1];
}

- (void)printNode:(Node *)node {
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
