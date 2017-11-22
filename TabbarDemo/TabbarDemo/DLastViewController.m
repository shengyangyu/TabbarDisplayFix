//
//  DLastViewController.m
//  TabbarDemo
//
//  Created by shengyangyu on 2017/11/22.
//  Copyright © 2017年 shengyangyu. All rights reserved.
//

#import "DLastViewController.h"

#import "DTabBarController.h"

@interface DLastViewController ()

@end

@implementation DLastViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)lastJump:(UIButton *)sender {
 
    NSLog(@"lastJump");
    DTabBarController *tabbar = (DTabBarController *)([UIApplication sharedApplication].keyWindow.rootViewController);
    // 如果当前就是首页，不需要切换
    BOOL tCurrent = (tabbar.selectedIndex == 0);
    if (!tCurrent) {
        tabbar.selectedIndex = 0;
    }
    [self.navigationController popToRootViewControllerAnimated:tCurrent];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
