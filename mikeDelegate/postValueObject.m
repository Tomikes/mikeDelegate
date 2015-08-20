//
//  postValueObject.m
//  mikeDelegate
//
//  Created by apple on 15/8/20.
//  Copyright (c) 2015年 Tomikes. All rights reserved.
//

#import "postValueObject.h"

@implementation postValueObject



//使用代理的函数体部分传递参数


//传值 @"下载完成啦!"
- (void)download {
    NSLog(@"代理传值");
    sleep(3.0);
    NSLog(@"代理传值完成");
    //3.往主线程中更新UI, 需要传递参数. 通知主线程下载完成. (调用代理方法)
    [self.delegate downloadFinshed:@"传递 代理传值完成"];
}



//代码块
- (void)download:(void (^)(NSString *param))completion { //1.在参数中定义块代码
   
    sleep(3.0);
    NSLog(@"块异步传值开始");
    //往主线程中更新UI, 需要传递参数. 通知主线程下载完成. (使用块代码)
    if (completion) {
        //这样可以让调用者不用关心线程问题
        dispatch_async(dispatch_get_main_queue(), ^{
            completion(@"块异步传值开始");  //2.执行块代码
        });
    }
}

@end
