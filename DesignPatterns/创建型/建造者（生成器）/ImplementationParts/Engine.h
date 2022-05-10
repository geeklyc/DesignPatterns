//
//  Engine.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/9.
//

#import <Foundation/Foundation.h>

#import "AbstractEngine.h"
#import "BuilderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Engine : NSObject<AbstractEngine, BuilderProtocol>

@end

NS_ASSUME_NONNULL_END
