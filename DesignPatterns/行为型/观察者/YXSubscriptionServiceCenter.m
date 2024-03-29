//
//  YXSubscriptionServiceCenter.m
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/18.
//

#import "YXSubscriptionServiceCenter.h"

static NSMutableDictionary *_subscriptionDictionary = nil;

@implementation YXSubscriptionServiceCenter

+ (void)initialize {
    
    if (self == [YXSubscriptionServiceCenter class]) {
        
        _subscriptionDictionary = [NSMutableDictionary dictionary];
    }
}

+ (void)createSubscriptionNumber:(NSString *)subscriptionNumber {

    NSParameterAssert(subscriptionNumber);
    
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable == nil) {
        
        hashTable = [NSHashTable weakObjectsHashTable];
        [_subscriptionDictionary setObject:hashTable forKey:subscriptionNumber];
    }
}

+ (void)removeSubscriptionNumber:(NSString *)subscriptionNumber {

    NSParameterAssert(subscriptionNumber);
    
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable) {
        
        [_subscriptionDictionary removeObjectForKey:subscriptionNumber];
    }
}

+ (void)addCustomer:(id <YXSubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber {

    NSParameterAssert(customer);
    NSParameterAssert(subscriptionNumber);
    
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    [hashTable addObject:customer];
}

+ (void)removeCustomer:(id <YXSubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber {

    NSParameterAssert(subscriptionNumber);
    
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    [hashTable removeObject:customer];
}

+ (void)sendMessage:(id)message toSubscriptionNumber:(NSString *)subscriptionNumber {

    NSParameterAssert(subscriptionNumber);
    
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable) {
        
        NSEnumerator *enumerator = [hashTable objectEnumerator];
        id <YXSubscriptionServiceCenterProtocol> object = nil;
        while (object = [enumerator nextObject]) {
            
            if ([object respondsToSelector:@selector(subscriptionMessage:subscriptionNumber:)]) {

                [object subscriptionMessage:message subscriptionNumber:subscriptionNumber];
            }
        }
    }
}

#pragma mark - 私有方法
+ (NSHashTable *)existSubscriptionNumber:(NSString *)subscriptionNumber {

    return [_subscriptionDictionary objectForKey:subscriptionNumber];
}

@end
