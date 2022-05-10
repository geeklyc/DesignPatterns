//
//  Wheels.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/9.
//

#import <Foundation/Foundation.h>

#import "AbstractWheels.h"
#import "BuilderProtocol.h"
NS_ASSUME_NONNULL_BEGIN

@interface Wheels : NSObject <BuilderProtocol, AbstractWheels>

@end

NS_ASSUME_NONNULL_END
