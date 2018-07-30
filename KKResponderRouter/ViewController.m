//
//  ViewController.m
//  KKResponderRouter
//
//  Created by ledka on 2018/7/30.
//  Copyright © 2018 ledka. All rights reserved.
//

#import "ViewController.h"
#import "KKView.h"
#import "UIResponder+Router.h"
#import "NSObject+PerformSelector.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    KKView *view = [[KKView alloc] initWithFrame:CGRectMake(CGRectGetWidth(self.view.bounds) / 2.0 - 200.0 / 2.0, CGRectGetHeight(self.view.bounds) / 2.0 - 200.0 / 2, 200.0, 200.0)];
    view.backgroundColor = [UIColor lightGrayColor];
    
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)routerEventWithSelectorName:(NSString *)selectorName object:(id)sender userInfo:(NSDictionary *)userInfo
{
    SEL selector = NSSelectorFromString(selectorName);
    
    NSMutableArray *array = [NSMutableArray array];
    
    if (sender) {
        [array addObject:sender];
    }
    
    if (userInfo) {
        [array addObject:userInfo];
    }
    
    [array addObject:@"parameter3"];
    
    [self performSelector:selector objects:array];
}

- (void)buttonTapped:(id)sender userInfo:(NSDictionary *)userInfo parameter:(NSString *)string
{
    NSLog(@"%@", userInfo);
    
    NSLog(@"%@", string);
}

@end
