//
//  StandardCharacterBuilder.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/6.
//

#import "StandardCharacterBuilder.h"

@implementation StandardCharacterBuilder

- (CharacterBuilder *)buildStrength:(NSInteger)value {
    NSInteger newValue = self.character.strength + value + 3;
    return [super buildStrength:newValue];
}

@end
