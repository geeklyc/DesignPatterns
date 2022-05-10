//
//  Node.h
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/5.
//

#import <Foundation/Foundation.h>

#import "SubNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject
<NSCopying>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *address;
@property (nonatomic, strong) NSArray <SubNode *> *list;

@end

NS_ASSUME_NONNULL_END
