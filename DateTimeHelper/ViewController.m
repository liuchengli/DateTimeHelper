//
//  ViewController.m
//  DateTimeHelper
//
//  Created by 刘成利 on 2017/1/13.
//  Copyright © 2017年 刘成利. All rights reserved.
//

#import "ViewController.h"
#import "DateTimeHelper.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 测试
    NSString *string = [DateTimeHelper getCurrentTimeWithFormatterString];
    
    NSLog(@"%@",string);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
