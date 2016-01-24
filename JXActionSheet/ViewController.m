//
//  ViewController.m
//  JXActionSheet
//
//  Created by huangxiangwang on 16/1/24.
//  Copyright © 2016年 JX.Wang. All rights reserved.
//

#import "ViewController.h"
#import "JXActionSheet.h"

@interface ViewController ()

@end

@implementation ViewController

- (IBAction)jxButtonAction:(UIButton *)sender {
    JXActionSheet *sheet = [[JXActionSheet alloc] initWithTitle:@"退出后不会删除任何历史数据，下次登录依然可以使用本账号。" cancelTitle:@"取消" otherTitles:@[@"退出登录"]];
    sheet.destructiveButtonIndex = 0;
    [sheet showView];
    [sheet dismissForCompletionHandle:^(NSInteger clickedIndex, BOOL isCancel) {
        NSLog(@"%@ == %@", @(clickedIndex), isCancel ? @"YES" : @"NO");
    }];
}


@end











