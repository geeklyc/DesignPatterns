//
//  PaperCanvasViewGenerator.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/3/31.
//

#import "PaperCanvasViewGenerator.h"

#import "PaperCanvasView.h"

@implementation PaperCanvasViewGenerator

- (CanvasView *)canvasViewWithFrame:(CGRect)aFrame {
    
    return [[PaperCanvasView alloc] initWithFrame:aFrame];
}

@end
