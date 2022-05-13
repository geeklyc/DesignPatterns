//
//  Node.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import "YXNode.h"

@implementation YXNode

- (id)copyWithZone:(nullable NSZone *)zone {
    
    YXNode *node =  [[YXNode alloc] init];
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
