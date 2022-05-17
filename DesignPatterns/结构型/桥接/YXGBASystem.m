//
//  YXGBASystem.m
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/17.
//

#import "YXGBASystem.h"

@implementation YXGBASystem

- (void)loadSystem {
    NSLog(@"GBA System");
}

- (void)command_up {
    [self.implementor loadCommand:YXCommnadTypeUp];
}

@end
