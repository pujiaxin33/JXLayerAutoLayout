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
    label.textColor = [UIColor whiteColor];
    label.font = [UIFont systemFontOfSize:17];
    label.text = @"  这是一个有渐变背景色的UILabel  ";
    [label sizeToFit];
    label.center = self.view.center;
    [self.view addSubview:label];
}


@end
