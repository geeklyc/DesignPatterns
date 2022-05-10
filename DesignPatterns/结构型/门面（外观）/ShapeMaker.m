//
//  ShapeMaker.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/12.
//

#import "ShapeMaker.h"

@implementation ShapeMaker

+ (void)drawCircleWithParas:(NSDictionary *)paras {

    // 绘制了一个圆
    Circle *circle = [Circle new];
    circle.radius  = 10.f; // paras里取
    [circle draw];
}

+ (void)drawCircleAndRectangle:(NSDictionary *)paras {

    // 绘制了一个圆
    Circle *circle = [Circle new];
    circle.radius  = 10.f; // paras里取
    [circle draw];
    
    // 绘制了一个矩形
    Rectangle *rectangle = [Rectangle new];
    rectangle.width      = 10.f; // paras里取
    rectangle.height     = 20.f; // paras里取
    [rectangle draw];
}

@end
