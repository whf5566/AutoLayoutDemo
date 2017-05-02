//
//  AutoLayoutCodeViewController.m
//  Demo
//
//  Created by weihuafeng on 16/1/14.
//  Copyright © 2016年 weihuafeng. All rights reserved.
//

#import "AutoLayoutCodeViewController.h"
#import "Masonry.h"

@interface AutoLayoutCodeViewController ()

@end

@implementation AutoLayoutCodeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationController.navigationBarHidden = NO;
    self.view.backgroundColor = [UIColor whiteColor];

    NSLog(@"%@",self.view);
    
    // 添加view
    UIView *viewA = [[UIView alloc] init];
    viewA.translatesAutoresizingMaskIntoConstraints = NO;
    viewA.backgroundColor = [UIColor redColor];
    [self.view addSubview:viewA];
    
    UIView *viewB = [[UIView alloc] init];
    viewB.translatesAutoresizingMaskIntoConstraints = NO;
    viewB.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:viewB];
    
    UIView *viewC = [[UIView alloc] init];
    viewC.translatesAutoresizingMaskIntoConstraints = NO;
    viewC.backgroundColor = [UIColor blueColor];
    [self.view addSubview:viewC];
    
    
    
    // |-A-B-C-|
    
    // A top 距 superview top 80pt
    // A left 距 superview left 0pt
    // A 高度 是 superview 的 0.5
   
    // B top 同 A
    // B left 距 A 的right 0pt
    // B 高度 同 A
    // B 宽度 同 A
    
    // C top 同 A
    // C left 距 B 的right 0pt
    // C 高度 同 A
    // C 宽度 同 A
    
    // C 的right 同superview 的right
    
    // ========================使用苹果API设置约束=========================
//    // 设置A的约束
//    NSLayoutConstraint *a_top = [NSLayoutConstraint constraintWithItem:viewA attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTop multiplier:1.0 constant:80.0];
//    
//    NSLayoutConstraint *a_leading =[NSLayoutConstraint constraintWithItem:viewA attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeLeading multiplier:1.0 constant:0.0];
//    
//    NSLayoutConstraint *a_height =[NSLayoutConstraint constraintWithItem:viewA attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.5 constant:0.0];
//    
//    [self.view addConstraints:@[a_top,a_leading,a_height]];
//    
//    // 设置B的约束
//    NSLayoutConstraint *b_top = [NSLayoutConstraint constraintWithItem:viewB attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:viewA attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0];
//    
//    NSLayoutConstraint *b_leading =[NSLayoutConstraint constraintWithItem:viewB attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:viewA attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0.0];
//    
//    NSLayoutConstraint *b_height =[NSLayoutConstraint constraintWithItem:viewB attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:viewA attribute:NSLayoutAttributeHeight multiplier:1 constant:0.0];
//    
//    NSLayoutConstraint *b_width =[NSLayoutConstraint constraintWithItem:viewB attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:viewA attribute:NSLayoutAttributeWidth multiplier:1 constant:0.0];
//    
//    [self.view addConstraints:@[b_top,b_leading,b_height,b_width]];
//    
//    
//    // 设置C的约束
//    NSLayoutConstraint *c_top = [NSLayoutConstraint constraintWithItem:viewC attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:viewA attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0];
//    
//    NSLayoutConstraint *c_leading =[NSLayoutConstraint constraintWithItem:viewC attribute:NSLayoutAttributeLeading relatedBy:NSLayoutRelationEqual toItem:viewB attribute:NSLayoutAttributeTrailing multiplier:1.0 constant:0.0];
//    
//    NSLayoutConstraint *c_height =[NSLayoutConstraint constraintWithItem:viewC attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:viewA attribute:NSLayoutAttributeHeight multiplier:1 constant:0.0];
//    
//    NSLayoutConstraint *c_width =[NSLayoutConstraint constraintWithItem:viewC attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:viewA attribute:NSLayoutAttributeWidth multiplier:1 constant:0.0];
//    
//    NSLayoutConstraint *c_trailing =[NSLayoutConstraint constraintWithItem:viewC attribute:NSLayoutAttributeTrailing relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeTrailing multiplier:1 constant:0.0];
//    
//    [self.view addConstraints:@[c_top,c_leading,c_height,c_width,c_trailing]];
    
    // ======================== 使用苹果VFL设置约束 =========================
    
//    NSDictionary *views = NSDictionaryOfVariableBindings(viewA,viewB,viewC);
// 
//    
//    
//    // |-A-B-C-|
//    
//    NSString *h_vfl = @"H:|-0-[viewA]-0-[viewB(viewA)]-0-[viewC(viewA)]-0-|";
//    
//    
//    [self.view addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:h_vfl options:0 metrics:nil views:views]];
//    
//    
//    NSString *v_vfl = @"V:|-80-[viewA]|";
//    
//    NSLayoutConstraint *a_height =[NSLayoutConstraint constraintWithItem:viewA attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:self.view attribute:NSLayoutAttributeHeight multiplier:0.5 constant:0.0];
//    
//    [self.view addConstraint:a_height];
//    
//    [self.view addConstraints: [NSLayoutConstraint constraintsWithVisualFormat:v_vfl options:0 metrics:nil views:views]];
//    
//    
//    NSLayoutConstraint *b_top = [NSLayoutConstraint constraintWithItem:viewB attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:viewA attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0];
//    
//    NSLayoutConstraint *b_height =[NSLayoutConstraint constraintWithItem:viewB attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:viewA attribute:NSLayoutAttributeHeight multiplier:1 constant:0.0];
//    
//    [self.view addConstraints:@[b_top,b_height]];
//    
//    NSLayoutConstraint *c_top = [NSLayoutConstraint constraintWithItem:viewC attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:viewA attribute:NSLayoutAttributeTop multiplier:1.0 constant:0.0];
//    
//    
//    NSLayoutConstraint *c_height =[NSLayoutConstraint constraintWithItem:viewC attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:viewA attribute:NSLayoutAttributeHeight multiplier:1 constant:0.0];
//    [self.view addConstraints:@[c_top,c_height]];
    
    // ========================= 使用Masonry库设置约束 ========================
    
    [viewA mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(self.view.mas_top).with.offset(80);
        make.leading.equalTo(self.view.mas_leading);
        make.height.equalTo(self.view.mas_height).with.multipliedBy(0.5);
    }];
    
    [viewB mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(viewA.mas_top);
        make.leading.equalTo(viewA.mas_trailing);
        make.width.equalTo(viewA.mas_width);
        make.height.equalTo(viewA.mas_height);
    }];
    
    [viewC mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.equalTo(viewA.mas_top);
        make.leading.equalTo(viewB.mas_trailing);
        make.width.equalTo(viewA.mas_width);
        make.height.equalTo(viewA.mas_height);
        make.trailing.equalTo(self.view.mas_trailing);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
