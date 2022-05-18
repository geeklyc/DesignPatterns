//
//  YXSubscriptionServiceCenterProtocol.h
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/18.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol YXSubscriptionServiceCenterProtocol <NSObject>

@required
- (void)subscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber;

@end

NS_ASSUME_NONNULL_END
