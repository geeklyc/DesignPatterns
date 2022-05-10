//
//  ShapeMaker.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/12.
//

#import <Foundation/Foundation.h>
#import "Rectangle.h"
#import "Circle.h"

NS_ASSUME_NONNULL_BEGIN

@interface ShapeMaker : NSObject
/**
 *  绘制圆
 *
 *  @param paras 参数
 */
+ (void)drawCircleWithParas:(NSDictionary *)paras;

/**
 *  绘制圆 + 矩形
 *
 *  @param paras 参数
 */
+ (void)drawCircleAndRectangle:(NSDictionary *)paras;


@end

NS_ASSUME_NONNULL_END
