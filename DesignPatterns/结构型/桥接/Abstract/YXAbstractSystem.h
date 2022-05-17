//
//  YXAbstractSystem.h
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/17.
//

#import <Foundation/Foundation.h>

#import "YXAbstractImplementor.h"

NS_ASSUME_NONNULL_BEGIN

@interface YXAbstractSystem : NSObject

// 执行者
@property (nonatomic, strong) YXAbstractImplementor *implementor;

- (void)loadSystem;
- (void)command_up;

@end

NS_ASSUME_NONNULL_END
