//
//  YXAbstractImplementor.h
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSUInteger, YXCommnadType) {
    YXCommnadTypeUp,
    
    YXCommnadTypeX,
};

@interface YXAbstractImplementor : NSObject

- (void)loadCommand:(YXCommnadType)command;

@end

NS_ASSUME_NONNULL_END
