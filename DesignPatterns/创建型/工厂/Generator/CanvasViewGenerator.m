//
//  CanvasViewGenerator.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/3/31.
//

#import "CanvasViewGenerator.h"

#import "CanvasView.h"

@implementation CanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame {
    
    return [[CanvasView alloc] initWithFrame:aFrame];
}

@end
