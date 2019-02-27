//
//  UIResponder+Router.m
//  KKResponderRouter
//
//  Created by ledka on 2018/7/30.
//  Copyright © 2018 ledka. All rights reserved.
//

#import "UIResponder+Router.h"
#import "NSObject+PerformSelector.h"

@implementation UIResponder (Router)

- (void)routerEventWithSelectorName:(NSString *)selectorName
                             object:(id)sender
                           userInfo:(NSDictionary *)userInfo
{
    SEL selector = NSSelectorFromString(selectorName);
    
    if ([self respondsToSelector:selector]) {
        NSMutableArray *array = [NSMutableArray array];
        
        if (sender) {
            [array addObject:sender];
        }
        
        if (userInfo) {
            [array addObject:userInfo];
        }
        
        [self performSelector:selector objects:array];
    } else {
        [[self nextResponder] routerEventWithSelectorName:selectorName object:sender userInfo:userInfo];
    }
}

@end
