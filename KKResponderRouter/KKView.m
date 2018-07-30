//
//  KKView.m
//  KKResponderRouter
//
//  Created by ledka on 2018/7/30.
//  Copyright © 2018 ledka. All rights reserved.
//

#import "KKView.h"
#import "KKSubView.h"

@implementation KKView

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
    KKSubView *subView = [[KKSubView alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.bounds) / 2.0 - 100.0 / 2.0, CGRectGetHeight(self.bounds) / 2.0 - 100.0 / 2.0, 100.0, 100.0)];
    subView.backgroundColor = [UIColor darkGrayColor];
    
    [self addSubview:subView];
}

@end
