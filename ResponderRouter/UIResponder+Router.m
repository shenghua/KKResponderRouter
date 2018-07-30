//
//  UIResponder+Router.m
//  KKResponderRouter
//
//  Created by ledka on 2018/7/30.
//  Copyright © 2018 ledka. All rights reserved.
//

#import "UIResponder+Router.h"

@implementation UIResponder (Router)

- (void)routerEventWithSelectorName:(NSString *)selectorName
                             object:(id)sender
                           userInfo:(NSDictionary *)userInfo
{
    [[self nextResponder] routerEventWithSelectorName:selectorName object:sender userInfo:userInfo];
}

@end
