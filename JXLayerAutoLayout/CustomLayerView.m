//
//  CustomLayerView.m
//  JXLayerAutoLayout
//
//  Created by jiaxin on 2018/5/4.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

#import "CustomLayerView.h"

@interface CustomLayerView ()
@property (nonatomic, strong) UILabel *nickLabel;
@property (nonatomic, strong) UILabel *fightLabel;
@property (nonatomic, strong) UIImageView *avatarImageView;
@end

@implementation CustomLayerView

+ (Class)layerClass {
    return [CAGradientLayer class];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self initializeViews];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initializeViews];
    }
    return self;
}

- (void)initializeViews {

    self.avatarImageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"lufei.jpg"]];
    self.avatarImageView.clipsToBounds = YES;
    self.avatarImageView.contentMode = UIViewContentModeScaleAspectFill;
    [self addSubview:self.avatarImageView];

    self.nickLabel = ({
        UILabel *label = [[UILabel alloc] init];
        label.textColor = [UIColor blackColor];
        label.font = [UIFont systemFontOfSize:17];
        label.text = @"昵称：路飞";
        label;
    });
    [self addSubview:self.nickLabel];

    self.fightLabel = ({
        UILabel *label = [[UILabel alloc] init];
        label.textColor = [UIColor blackColor];
        label.font = [UIFont systemFontOfSize:17];
        label.text = @"战斗力：10000000+";
        label;
    });
    [self addSubview:self.fightLabel];
}

- (void)layoutSubviews {
    [super layoutSubviews];

    CGFloat contentMargin = 20;
    CGFloat avatarHeight = self.bounds.size.height - contentMargin*2;
    self.avatarImageView.frame = CGRectMake(contentMargin, contentMargin, avatarHeight, avatarHeight);

    [self.nickLabel sizeToFit];
    self.nickLabel.frame = CGRectMake(avatarHeight + contentMargin*2, contentMargin, self.nickLabel.bounds.size.width, self.nickLabel.bounds.size.height);

    [self.fightLabel sizeToFit];
    self.fightLabel.frame = CGRectMake(avatarHeight + contentMargin*2, self.bounds.size.height - contentMargin*2, self.fightLabel.bounds.size.width, self.fightLabel.bounds.size.height);

    CAGradientLayer *gradientLayer = (CAGradientLayer *)self.layer;
    gradientLayer.colors = @[(id)[[UIColor alloc] initWithRed:16/255.0 green:175/255.0 blue:211/255.0 alpha:1].CGColor, (id)[[UIColor alloc] initWithRed:33/255.0 green:94/255.0 blue:147/255.0 alpha:1].CGColor];
    gradientLayer.locations = @[@(0), @(1)];
    gradientLayer.startPoint = CGPointMake(0, 0);
    gradientLayer.endPoint = CGPointMake(1, 0);

    self.layer.cornerRadius = self.bounds.size.height/2.0;
}

@end
