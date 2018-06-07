//
//  LayoutSubviewsCallbackViewController.m
//  JXLayerAutoLayout
//
//  Created by jiaxin on 2018/5/10.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

#import "LayoutSubviewsCallbackViewController.h"
#import "UIView+LayoutSubviewsCallback.h"

@interface LayoutSubviewsCallbackViewController ()
@property (nonatomic, strong) UILabel *testLabel;
@end

@implementation LayoutSubviewsCallbackViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    self.testLabel = ({
        UILabel *label = [[UILabel alloc] init];
        label.textColor = [UIColor blackColor];
        label.font = [UIFont systemFontOfSize:17];
        label.text = @"  测试文本，欢迎测试  ";
        label;
    });

    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
    gradientLayer.colors = @[(id)[[UIColor alloc] initWithRed:16/255.0 green:175/255.0 blue:211/255.0 alpha:1].CGColor, (id)[[UIColor alloc] initWithRed:33/255.0 green:94/255.0 blue:147/255.0 alpha:1].CGColor];
    gradientLayer.locations = @[@(0), @(1)];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 0);
    [self.view.layer addSublayer:gradientLayer];
    self.testLabel.layoutSubviewsCallback = ^(UIView *view) {
        gradientLayer.frame = view.frame;
        gradientLayer.cornerRadius = view.bounds.size.height/2.0;
    };

    [self.view addSubview:self.testLabel];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];

    [self.testLabel sizeToFit];
    self.testLabel.center = self.view.center;
}


@end
