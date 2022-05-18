//
//  YXSubscriptionServiceCenter.h
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/18.
//

#import <Foundation/Foundation.h>

#import "YXSubscriptionServiceCenterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface YXSubscriptionServiceCenter : NSObject

/**
 *  创建订阅号
 *
 *  @param subscriptionNumber 订阅号码
 */
+ (void)createSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 *  移除订阅号
 *
 *  @param subscriptionNumber 订阅号码
 */
+ (void)removeSubscriptionNumber:(NSString *)subscriptionNumber;

#pragma mark - 维护客户信息
/**
 *  添加客户到具体的订阅号当中
 *
 *  @param customer           客户
 *  @param subscriptionNumber 订阅号码
 */
+ (void)addCustomer:(id <YXSubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 *  从具体的订阅号当中移除客户
 *
 *  @param customer           客户
 *  @param subscriptionNumber 订阅号码
 */
+ (void)removeCustomer:(id <YXSubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber;

#pragma mark - 发送消息
/**
 *  发送消息到具体的订阅号当中
 *
 *  @param message            消息
 *  @param subscriptionNumber 订阅号码
 */
+ (void)sendMessage:(id)message toSubscriptionNumber:(NSString *)subscriptionNumber;

@end

NS_ASSUME_NONNULL_END
