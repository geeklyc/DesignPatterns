//
//  ClothCanvasViewGenerator.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/3/31.
//

#import "ClothCanvasViewGenerator.h"

#import "ClothCanvasView.h"

@implementation ClothCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame {
    
    return [[ClothCanvasView alloc] initWithFrame:aFrame];
}

@end
