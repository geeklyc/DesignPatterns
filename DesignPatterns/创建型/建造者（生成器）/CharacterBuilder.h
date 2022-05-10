//
//  CharacterBuilder.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import <Foundation/Foundation.h>

#import "Character.h"

NS_ASSUME_NONNULL_BEGIN

@interface CharacterBuilder : NSObject

@property (nonatomic, strong, readonly) Character *character;

- (CharacterBuilder *)buildeNewCharacter;
- (CharacterBuilder *)buildStrength:(NSInteger)value;

@end

NS_ASSUME_NONNULL_END
