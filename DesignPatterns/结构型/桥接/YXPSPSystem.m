//
//  YXPSPSystem.m
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/17.
//

#import "YXPSPSystem.h"

@implementation YXPSPSystem

- (void)loadSystem {
    NSLog(@"PSP System");
}

- (void)command_up {
    [self.implementor loadCommand:YXCommnadTypeUp];
}

- (void)command_x {
    [self.implementor loadCommand:YXCommnadTypeX];
}

@end
