//
//  UIView+LayoutSubviewsCallback.m
//  JXLayerAutoLayout
//
//  Created by jiaxin on 2018/5/4.
//  Copyright © 2018年 jiaxin. All rights reserved.
//

#import "UIView+LayoutSubviewsCallback.h"
#import <objc/runtime.h>

@implementation UIView (LayoutSubviewsCallback)

+ (void)load {
    Method originalMethod = class_getInstanceMethod(self, @selector(layoutSubviews));
    Method newMethod = class_getInstanceMethod(self, @selector(jx_layoutSubviews));
    method_exchangeImplementations(originalMethod, newMethod);
}

- (void)jx_layoutSubviews {
    [self jx_layoutSubviews];

    !self.layoutSubviewsCallback ?: self.layoutSubviewsCallback(self);
}

- (void)setLayoutSubviewsCallback:(void (^)(UIView *))layoutSubviewsCallback {
    objc_setAssociatedObject(self, "layoutSubviewsCallback", layoutSubviewsCallback, OBJC_ASSOCIATION_RETAIN);
}

- (void (^)(UIView *))layoutSubviewsCallback {
    return objc_getAssociatedObject(self, "layoutSubviewsCallback");
}


@end
