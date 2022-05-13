//
//  RightToolBarFactory.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import "RightToolBarFactory.h"

#import "RightToolView.h"
#import "RightTagButton.h"

@implementation RightToolBarFactory

- (UIView *)toolView {
    return [[RightToolView alloc] init];
}

- (UIButton *)tagButton  {
    return [[RightTagButton alloc] init];
}

@end

