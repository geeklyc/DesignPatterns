//
//  LeftToolBarFactory.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import "LeftToolBarFactory.h"

#import "LeftToolView.h"
#import "LeftTagButton.h"

@implementation LeftToolBarFactory

- (UIView *)toolView {
    return [[LeftToolView alloc] init];
}

- (UIButton *)tagButton  {
    return [[LeftTagButton alloc] init];
}

@end
