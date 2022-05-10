//
//  AbstractWheels.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/9.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AbstractWheels <NSObject>

@required

/**
 *  轮子的数目
 *
 *  @param number 数目
 */
- (void)wheelsNumber:(NSNumber *)number;

/**
 *  信息
 *
 *  @return 引擎信息
 */
- (NSString *)infomation;

@end

NS_ASSUME_NONNULL_END
