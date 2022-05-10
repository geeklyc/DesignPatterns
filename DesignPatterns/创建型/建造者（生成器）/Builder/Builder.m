//
//  Builder.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/9.
//

#import "Builder.h"

@implementation Builder

- (void)buildAllParts {
    
    // 创建所有部件
    [self.engine build];
    [self.wheels build];
    [self.door build];
    
    NSMutableDictionary *dataDic = [NSMutableDictionary dictionary];
    
    // 组装产品
    dataDic[@"engine"] = [self.engine infomation];
    dataDic[@"wheels"] = [self.wheels infomation];
    dataDic[@"door"]   = [self.door infomation];
    
    self.productsInfo = dataDic;
}

@end
