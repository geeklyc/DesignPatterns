//
//  DataManager.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DataManager : NSObject

+ (instancetype)managerCenter;

@property (nonatomic, assign) NSInteger score;

@end

NS_ASSUME_NONNULL_END
