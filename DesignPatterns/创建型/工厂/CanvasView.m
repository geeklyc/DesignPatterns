//
//  CanvasView.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/3/31.
//

#import "CanvasView.h"

@implementation CanvasView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor redColor];
    }
    return self;
}

@end
