//
//  ChasingGame.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/6.
//

#import "ChasingGame.h"

@implementation ChasingGame

- (Character *)createPlayer:(CharacterBuilder *)builder {
    [builder buildeNewCharacter];
    [builder buildStrength:2.0];
    return [builder character];
}

- (Character *)createEnemy:(CharacterBuilder *)builder {
    [builder buildeNewCharacter];
    [builder buildStrength:4.0];
    return [builder character];
}

@end
