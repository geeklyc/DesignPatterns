//
//  SubNode.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import "YXSubNode.h"

@implementation YXSubNode

- (id)copyWithZone:(nullable NSZone *)zone {
    
    YXSubNode *node =  [[YXSubNode alloc] init];
    if (node) {
        node.name = self.name;
    }
    return node;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"name: %@\n", self.name];
}


@end
