//
//  ToolBarFactory.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import "ToolBarFactory.h"

#import "LeftToolBarFactory.h"
#import "RightToolBarFactory.h"

@implementation ToolBarFactory

+ (id<ToolBarAbstractFactory>)factoryWithType:(NSInteger)type {
    if (type == 1) {
        return [[LeftToolBarFactory alloc] init];
    }
    
    if (type == 2) {
        return [[RightToolBarFactory alloc] init];
    }
    return nil;
}

@end
