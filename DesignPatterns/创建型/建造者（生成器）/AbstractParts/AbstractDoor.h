//
//  AbstractDoor.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/9.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol AbstractDoor <NSObject>

@required

/**
 *  门的颜色
 *
 *  @param color 颜色
 */
- (void)doorColor:(UIColor *)color;

/**
 *  信息
 *
 *  @return 引擎信息
 */
- (NSString *)infomation;

@end

NS_ASSUME_NONNULL_END
