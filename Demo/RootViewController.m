//
//  RootViewController.m
//  Demo
//
//  Created by weihuafeng on 16/1/14.
//  Copyright © 2016年 weihuafeng. All rights reserved.
//

#import "RootViewController.h"
#import "AutoLayoutViewController.h"
#import "AutoLayoutCodeViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/



#pragma mark - action
- (IBAction)onClickAutoLayout:(id)sender
{
    
    AutoLayoutViewController *controller = [[AutoLayoutViewController alloc] initWithNibName:@"AutoLayoutViewController" bundle:[NSBundle mainBundle]];
//    AutoLayoutViewController *controller = [[AutoLayoutViewController alloc] init];
    
    [self.navigationController pushViewController:controller animated:YES];
}

- (IBAction)onClickAutoLayoutCode:(id)sender
{
    
//    AutoLayoutCodeViewController *controller = [[AutoLayoutCodeViewController alloc] initWithNibName:@"AutoLayoutCodeViewController" bundle:[NSBundle mainBundle]];
    
    AutoLayoutCodeViewController *controller = [[AutoLayoutCodeViewController alloc] init];
    
    [self.navigationController pushViewController:controller animated:YES];
}



@end
