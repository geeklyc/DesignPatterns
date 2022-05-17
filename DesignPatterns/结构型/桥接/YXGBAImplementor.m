//
//  YXGBAImplementor.m
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/17.
//

#import "YXGBAImplementor.h"

@implementation YXGBAImplementor

- (void)loadCommand:(YXCommnadType)command {
    if (command == YXCommnadTypeUp) {
        NSLog(@"GBA up 命令");
    }
}


@end
