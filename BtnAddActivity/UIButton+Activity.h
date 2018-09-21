//
//  UIButton+Activity.h
//  BtnAndActivity
//
//  Created by Mac on 2018/8/14.
//  Copyright © 2018年 saint. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (Activity)

@property (nonatomic, strong) UIActivityIndicatorView * activity;

@property (nonatomic, strong) UIImage * img;


-(void)startAnimating;

-(void)stopAnimating;

-(BOOL)isAnimating;

@end
