//
//  YXRequest.h
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol YXRequest <NSObject>

// 开始请求
- (void)start;

@end

NS_ASSUME_NONNULL_END
