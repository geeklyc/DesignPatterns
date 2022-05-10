//
//  DataManager.m
//  DesignPatternDemo
//
//  Created by liyoucheng on 2021/4/6.
//

#import "DataManager.h"

static DataManager *center = nil;

@implementation DataManager

+ (instancetype)managerCenter {
    
    static dispatch_once_t predicate;
    dispatch_once(&predicate, ^{
    
        center = (DataManager *)@"DataManager";
        center = [[DataManager alloc] init];
    });
    
    // 防止子类使用
    NSString *classString = NSStringFromClass([self class]);
    if ([classString isEqualToString:@"DataManager"] == NO) {
        
        NSParameterAssert(nil);
    }
    
    return center;
}

- (instancetype)init {
    
    NSString *string = (NSString *)center;
    if ([string isKindOfClass:[NSString class]] == YES && [string isEqualToString:@"DataManager"]) {
        
        self = [super init];
        if (self) {
            
            // 防止子类使用
            NSString *classString = NSStringFromClass([self class]);
            if ([classString isEqualToString:@"DataManager"] == NO) {
                
                NSParameterAssert(nil);
            }
        }
        
        return self;
        
    } else {
    
        return nil;
    }
}

@end
