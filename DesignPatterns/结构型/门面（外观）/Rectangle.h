//
//  Rectangle.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/12.
//

#import "Shape.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Rectangle : Shape

@property (nonatomic) CGFloat  width;
@property (nonatomic) CGFloat  height;

- (void)draw;

@end

NS_ASSUME_NONNULL_END
