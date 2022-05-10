//
//  Builder.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/9.
//

#import <Foundation/Foundation.h>

#import "AbstractEngine.h"
#import "AbstractWheels.h"
#import "AbstractDoor.h"
#import "BuilderProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Builder : NSObject

@property (nonatomic, strong) id <BuilderProtocol, AbstractEngine> engine;
@property (nonatomic, strong) id <BuilderProtocol, AbstractWheels> wheels;
@property (nonatomic, strong) id <BuilderProtocol, AbstractDoor>   door;

/**
 *  产品信息
 */
@property (nonatomic, strong) NSDictionary *productsInfo;

/**
 *  构建所有部件
 *
 */
- (void)buildAllParts;

@end

NS_ASSUME_NONNULL_END
