//
//  YXNewRequest1.h
//  DesignPatterns
//
//  Created by liyoucheng on 2022/5/13.
//

#import <Foundation/Foundation.h>

#import "YXOldRequest.h"
#import "YXRequest.h"

NS_ASSUME_NONNULL_BEGIN

@interface YXNewRequest1 : YXOldRequest
<YXRequest>

@end

NS_ASSUME_NONNULL_END
