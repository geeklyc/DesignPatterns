//
//  ToolBarFactory.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ToolBarFactory : NSObject

+ (ToolBarFactory *)factoryWithType:(NSInteger)type;

@end

NS_ASSUME_NONNULL_END
