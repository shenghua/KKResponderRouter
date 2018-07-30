//
//  KKSubView.m
//  KKResponderRouter
//
//  Created by ledka on 2018/7/30.
//  Copyright © 2018 ledka. All rights reserved.
//

#import "KKSubView.h"
#import "UIResponder+Router.h"

@implementation KKSubView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self) {
        [self initSubviews];
    }
    
    return self;
}

- (void)initSubviews
{
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.bounds) / 2.0 - 60.0 / 2.0, CGRectGetHeight(self.bounds) / 2.0 - 40.0 / 2.0, 60.0, 40.0)];
    button.backgroundColor = [UIColor redColor];
    [button setTitle:@"Click me" forState:UIControlStateNormal];
    [self addSubview:button];
    
    [button addTarget:self action:@selector(buttonTapped:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)buttonTapped:(id)sender
{
    [self routerEventWithSelectorName:@"buttonTapped:userInfo:parameter:" object:sender userInfo:@{@"key" : @"subview's button tapped"}];
}

@end
