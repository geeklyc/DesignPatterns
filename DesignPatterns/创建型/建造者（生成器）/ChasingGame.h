//
//  ChasingGame.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/6.
//

#import <Foundation/Foundation.h>

#import "StandardCharacterBuilder.h"

NS_ASSUME_NONNULL_BEGIN

@interface ChasingGame : NSObject

- (Character *)createPlayer:(CharacterBuilder *)builder;

- (Character *)createEnemy:(CharacterBuilder *)builder;

@end

NS_ASSUME_NONNULL_END
