//
//  YXAbstractSystem.m
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/17.
//

#import "YXAbstractSystem.h"

@implementation YXAbstractSystem

- (void)loadSystem {
    
}

- (void)command_up {
    [self.implementor loadCommand:YXCommnadTypeUp];
}

@end
