//
//  AbstractEngine.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/9.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AbstractEngine <NSObject>

@required

/**
 *  引擎的尺寸
 *
 *  @param scale 尺寸
 */
- (void)engineScale:(CGFloat)scale;

/**
 *  引擎的重量
 *
 *  @param kg 重量
 */
- (void)engineWeight:(CGFloat)kg;

/**
 *  信息
 *
 *  @return 引擎信息
 */
- (NSString *)infomation;

@end

NS_ASSUME_NONNULL_END
