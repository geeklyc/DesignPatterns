//
//  BuilderProtocol.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol BuilderProtocol <NSObject>

@required
/**
 *  构建对象
 *
 *  @return 返回构建的对象
 */
- (id)build;

@end

NS_ASSUME_NONNULL_END
