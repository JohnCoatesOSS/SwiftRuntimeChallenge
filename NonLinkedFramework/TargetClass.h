//
//  TargetClass.h
//  Created on 5/16/20
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TargetClass : NSObject

+ (void)targetMethod;
- (void)targetInstanceMethod;
+ (NSString *)targetMethodReturningObject;
@end

NS_ASSUME_NONNULL_END
