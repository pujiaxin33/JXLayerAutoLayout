//
//  TraditionViewController.m
//  JXLayerAutoLayout
//
//  Created by jiaxin on 2018/6/7.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

#import "TraditionViewController.h"

@interface TraditionViewController ()
@property (nonatomic, strong) UILabel *testLabel;
@property (nonatomic, strong) CAGradientLayer *gradientLayer;
@end

@implementation TraditionViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];

    self.testLabel = ({
        UILabel *label = [[UILabel alloc] init];
        label.textColor = [UIColor whiteColor];
        label.font = [UIFont systemFontOfSize:17];
        label.text = @"这是一个有渐变背景色的UILabel";
        label;
    });

    _gradientLayer = [CAGradientLayer layer];
    _gradientLayer.colors = @[(id)[[UIColor alloc] initWithRed:16/255.0 green:175/255.0 blue:211/255.0 alpha:1].CGColor, (id)[[UIColor alloc] initWithRed:33/255.0 green:94/255.0 blue:147/255.0 alpha:1].CGColor];
    _gradientLayer.locations = @[@(0), @(1)];
    _gradientLayer.startPoint = CGPointMake(0, 0);
    _gradientLayer.endPoint = CGPointMake(1, 0);
    [self.view.layer addSublayer:_gradientLayer];
    [self.view addSubview:self.testLabel];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];

    [self.testLabel sizeToFit];
    self.testLabel.center = self.view.center;

    self.gradientLayer.cornerRadius = self.testLabel.frame.size.height/2;
    CGFloat margin = 10;//gradientLayer左右需要有边距
    CGRect frame = self.testLabel.frame;
    frame.origin.x -= margin;
    frame.size.width += margin*2;
    self.gradientLayer.frame = frame;
}

@end
