//
//  YXNewRequest2.m
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/13.
//

#import "YXNewRequest2.h"

#import "YXOldRequest.h"

@interface YXNewRequest2 ()

@property (nonatomic, strong) YXOldRequest *oldRequest;

@end

@implementation YXNewRequest2

- (instancetype)init {
    self = [super init];
    if (self) {
        self.oldRequest = [YXOldRequest new];
    }
    return self;
}

- (void)start {
    NSLog(@"【网络请求】对象-适配器的实际请求");
    // TODO: 按需实现
    
    [self.oldRequest startRequest];
    
    // TODO: 按需实现
}

@end
