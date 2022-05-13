//
//  YXDataManager.m
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/13.
//

// [参考](https://www.jianshu.com/p/684895b89a26)

#import "YXDataManager.h"

static YXDataManager *manager = nil;

@implementation YXDataManager

+ (instancetype)shareManager {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

// 防止 alloc allocWithZone
+ (id)allocWithZone:(struct _NSZone *)zone{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [super allocWithZone:zone];
    });
    return manager;
}

// 防止 copy

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return manager;
}

- (nonnull id)mutableCopyWithZone:(nullable NSZone *)zone {
    return manager;
}

@end
