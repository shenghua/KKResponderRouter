//
//  NSObject+PerformSelector.m
//  KKResponderRouter
//
//  Created by ledka on 2018/7/30.
//  Copyright © 2018 ledka. All rights reserved.
//

#import "NSObject+PerformSelector.h"

@implementation NSObject (PerformSelector)

- (id)performSelector:(SEL)selector objects:(NSArray<id> *)objects
{
    NSMethodSignature *signature = [self.class instanceMethodSignatureForSelector:selector];
    
    if (!signature) {
        NSString *info = [NSString stringWithFormat:@"-[%@ %@]:unrecognized selector sent to instance",[self class],NSStringFromSelector(selector)];
        
        @throw [[NSException alloc] initWithName:@"unrecognized selector" reason:info userInfo:nil];
        
        return nil;
    }
    
    NSInvocation *invocation = [NSInvocation invocationWithMethodSignature:signature];
    
    invocation.target = self;
    invocation.selector = selector;
    
    // numberOfArguments存在默认的 _cmd、target 两个参数，需剔除
    NSUInteger arguments = signature.numberOfArguments - 2;
    NSInteger count = MIN(arguments, objects.count);
    
    for (int i = 0; i < count; i++) {
        id argument = [objects objectAtIndex:i];
        
        if ([argument isKindOfClass:[NSNull class]]) {
            argument = nil;
        }
        
        [invocation setArgument:&argument atIndex:i + 2];
    }
    
    [invocation invoke];
    
    id result = nil;
    
    // 判断是否有返回值
    if (signature.methodReturnLength != 0) {
        [invocation getReturnValue:&result];
    }
    
    return result;
}

@end
