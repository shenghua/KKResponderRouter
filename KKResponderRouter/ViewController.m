//
//  ViewController.m
//  KKResponderRouter
//
//  Created by ledka on 2018/7/30.
//  Copyright © 2018 ledka. All rights reserved.
//

#import "ViewController.h"
#import "KKView.h"

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

- (void)buttonTapped:(NSDictionary *)userInfo
{
    NSLog(@"%@", userInfo);
}

@end
