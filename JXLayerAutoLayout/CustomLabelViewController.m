//
//  CustomLabelViewController.m
//  JXLayerAutoLayout
//
//  Created by jiaxin on 2018/5/10.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

#import "CustomLabelViewController.h"
#import "CustomLabel.h"

@interface CustomLabelViewController ()

@end

@implementation CustomLabelViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    CustomLabel *label = [[CustomLabel alloc] init];
    label.textColor = [UIColor blackColor];
    label.font = [UIFont systemFontOfSize:17];
    label.text = @"  测试文本，欢迎测试  ";
    [label sizeToFit];
    label.center = self.view.center;
    [self.view addSubview:label];
}


@end
