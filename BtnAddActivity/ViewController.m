//
//  ViewController.m
//  BtnAddActivity
//
//  Created by Mac on 2018/9/21.
//  Copyright © 2018年 saint. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+Activity.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIButton * btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(0, 0, 40, 40)];
    [btn setCenter:self.view.center];
    [btn setImage:[UIImage imageNamed:@"contact_down"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(onClickBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn];
    
}

-(void)onClickBtn:(UIButton *)btn {
    [btn startAnimating];
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [btn stopAnimating];
    });
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
