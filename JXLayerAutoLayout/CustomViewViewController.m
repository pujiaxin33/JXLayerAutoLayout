//
//  CustomViewViewController.m
//  JXLayerAutoLayout
//
//  Created by jiaxin on 2018/5/10.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

#import "CustomViewViewController.h"
#import "CustomLayerView.h"

@interface CustomViewViewController ()

@end

@implementation CustomViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    CustomLayerView *layerView = [[CustomLayerView alloc] init];
    layerView.bounds = CGRectMake(0, 0, 300, 100);
    layerView.center = self.view.center;
    [self.view addSubview:layerView];
}

@end
