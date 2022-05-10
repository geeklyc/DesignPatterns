//
//  Node.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import "Node.h"

@implementation Node

- (id)copyWithZone:(nullable NSZone *)zone {
    
    Node *node =  [[Node alloc] init];
    if (node) {
        node.name = self.name;
        node.address = self.address;
        node.list = [[NSArray alloc] initWithArray:self.list copyItems:YES];
    }
    return node;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"\n name: %@\n address: %@\n list: %@\n", self.name, self.address, self.list];
}

@end
