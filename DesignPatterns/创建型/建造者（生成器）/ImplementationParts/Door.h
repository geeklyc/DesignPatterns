//
//  Door.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/9.
//

#import <Foundation/Foundation.h>

#import "AbstractDoor.h"
#import "BuilderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Door : NSObject <AbstractDoor, BuilderProtocol>

@end

NS_ASSUME_NONNULL_END
