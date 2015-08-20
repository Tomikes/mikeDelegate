//
//  proxyViewController.m
//  mikeDelegate
//
//  Created by apple on 15/8/20.
//  Copyright (c) 2015年 Tomikes. All rights reserved.
//

#import "proxyViewController.h"
#import "XNUploadDelegate.h"
#import "postValueObject.h"

@interface proxyViewController () <XNUploadDelegate>

@end

@implementation proxyViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    
    postValueObject *upload = [[postValueObject alloc] init];
  
    upload.delegate = self;
 
    [upload download];
    
    
    //代码块    直接取出参数使用
    
    [upload download: ^(NSString *param) {
        NSLog(@"%@", [NSThread currentThread]);
        NSLog(@"%@ 传值ok", param);
    }];
  
    
    
}



//使用函数参数部分，因为其中蕴含值

//代理方法中取值  param中有药传递的值
- (void)downloadFinshed:(NSString *)param {
    NSLog(@"%@ 已经ok了", param);
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
