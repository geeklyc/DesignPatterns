//
//  ToolBarAbstractFactory.h
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/13.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol ToolBarAbstractFactory <NSObject>

- (UIView *)toolView;

- (UIButton *)tagButton;

@end

NS_ASSUME_NONNULL_END
