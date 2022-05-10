//
//  CharacterBuilder.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import "CharacterBuilder.h"

@interface CharacterBuilder ()

@property (nonatomic, strong, readwrite) Character *character;

@end

@implementation CharacterBuilder

- (CharacterBuilder *)buildeNewCharacter {
    self.character = [[Character alloc] init];
    return self;
}

- (CharacterBuilder *)buildStrength:(NSInteger)value {
    self.character.strength = value;
    NSLog(@"攻击力 %ld", (long)value);
    return self;
}

@end
