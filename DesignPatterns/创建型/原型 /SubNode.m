//
//  SubNode.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import "SubNode.h"

@implementation SubNode

- (id)copyWithZone:(nullable NSZone *)zone {
    
    SubNode *node =  [[SubNode alloc] init];
    if (node) {
        node.name = self.name;
    }
    return node;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"name: %@\n", self.name];
}


@end
