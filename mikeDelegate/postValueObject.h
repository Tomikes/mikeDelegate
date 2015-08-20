//
//  postValueObject.h
//  mikeDelegate
//
//  Created by apple on 15/8/20.
//  Copyright (c) 2015年 Tomikes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XNUploadDelegate.h"

@interface postValueObject : NSObject

@property (nonatomic, assign) id <XNUploadDelegate> delegate;

-(void)download;

// 代码块传值

- (void)download:(void (^)(NSString *param))completion;

@end
