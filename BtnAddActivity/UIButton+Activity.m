//
//  UIButton+Activity.m
//  BtnAndActivity
//
//  Created by Mac on 2018/8/14.
//  Copyright © 2018年 saint. All rights reserved.
//

#import "UIButton+Activity.h"
#import <objc/runtime.h>

static NSString * NTBtnImgKey = @"btnImgkey";

static NSString * NTActivityKey = @"activity";

@implementation UIButton (Activity)

-(void)setImg:(UIImage *)img {
    objc_setAssociatedObject(self, &NTBtnImgKey, img,OBJC_ASSOCIATION_RETAIN);
}

-(UIImage *)img {
     return objc_getAssociatedObject(self, &NTBtnImgKey);
}

-(void)setActivity:(UIActivityIndicatorView *)activity {
    objc_setAssociatedObject(self, &NTActivityKey, activity, OBJC_ASSOCIATION_RETAIN);
}

-(UIActivityIndicatorView *)activity {
    return objc_getAssociatedObject(self, &NTActivityKey);
}

-(void)startAnimating {
    self.img = self.imageView.image;
    [self setImage:[UIImage imageNamed:@""] forState:UIControlStateNormal];
    self.activity  = [[UIActivityIndicatorView alloc]initWithActivityIndicatorStyle:(UIActivityIndicatorViewStyleGray)];
    [self.activity setFrame:CGRectMake(CGRectGetWidth(self.frame)/2 - 15, CGRectGetHeight(self.frame)/2 - 15, 30, 30)];
    [self addSubview:self.activity];
    [self.activity startAnimating];
}

-(void)stopAnimating {
    [self setImage:self.img forState:UIControlStateNormal];
    [self.activity stopAnimating];
    [self.activity removeFromSuperview];
}

-(BOOL)isAnimating {
   return  [self.activity isAnimating] == YES ? YES : NO;
}

@end
