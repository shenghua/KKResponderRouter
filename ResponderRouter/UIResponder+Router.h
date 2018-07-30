//
//  UIResponder+Router.h
//  KKResponderRouter
//
//  Created by ledka on 2018/7/30.
//  Copyright © 2018 ledka. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIResponder (Router)

- (void)routerEventWithSelectorName:(NSString *)selectorName
                             object:(id)sender
                           userInfo:(NSDictionary *)userInfo;

@end
