//
//  CustomLabel.m
//  JXLayerAutoLayout
//
//  Created by jiaxin on 2018/5/4.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

#import "CustomLabel.h"

@implementation CustomLabel

+ (Class)layerClass {
    return [CAGradientLayer class];
}

- (void)layoutSubviews {
    [super layoutSubviews];

    CAGradientLayer *gradientLayer = (CAGradientLayer *)self.layer;
    gradientLayer.colors = @[(id)[[UIColor alloc] initWithRed:16/255.0 green:175/255.0 blue:211/255.0 alpha:1].CGColor, (id)[[UIColor alloc] initWithRed:33/255.0 green:94/255.0 blue:147/255.0 alpha:1].CGColor];
    gradientLayer.locations = @[@(0), @(1)];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 0);

    self.layer.cornerRadius = self.bounds.size.height/2.0;
}

@end
