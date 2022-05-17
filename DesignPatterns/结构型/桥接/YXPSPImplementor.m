//
//  YXPSPImplementor.m
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/17.
//

#import "YXPSPImplementor.h"

@implementation YXPSPImplementor

- (void)loadCommand:(YXCommnadType)command {
    if (command == YXCommnadTypeUp) {
        NSLog(@"PSP up 命令");
    } else if (command == YXCommnadTypeX) {
        NSLog(@"PSP X 命令");
    }
    
    
}

@end
