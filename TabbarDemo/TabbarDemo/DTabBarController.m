//
//  DTabBarController.m
//  TabbarDemo
//
//  Created by shengyangyu on 2017/11/22.
//  Copyright © 2017年 shengyangyu. All rights reserved.
//

#import "DTabBarController.h"

@interface DTabBarController ()

@end

@implementation DTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 使用自定义tabbar
    [self setValue:FSTabBarView.new forKey:@"tabBar"];
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

@end

@implementation FSTabBarView

/** 修复iOS11 tabbar 上移bug */
- (void)setFrame:(CGRect)frame {
    
    if (self.superview && CGRectGetMaxY(self.superview.bounds) != CGRectGetMaxY(frame)) {
        frame.origin.y = CGRectGetHeight(self.superview.bounds) - CGRectGetHeight(frame);
    }
    [super setFrame:frame];
}

@end
