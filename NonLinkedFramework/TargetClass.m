//
//  TargetClass.m
//  Created on 5/16/20
//

#import "TargetClass.h"

@implementation TargetClass

+ (void)targetMethod {
    NSLog(@"Called: %@", NSStringFromSelector(_cmd));
}

- (void)targetInstanceMethod {
    NSLog(@"Called: %@", NSStringFromSelector(_cmd));
}

+ (NSString *)targetMethodReturningObject {
    NSLog(@"Called: %@", NSStringFromSelector(_cmd));
    return NSStringFromSelector(_cmd);
}

@end
