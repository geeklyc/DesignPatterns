//
//  PaperCanvasView.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/3/31.
//

#import "PaperCanvasView.h"

@implementation PaperCanvasView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor blueColor];
    }
    return self;
}

@end
