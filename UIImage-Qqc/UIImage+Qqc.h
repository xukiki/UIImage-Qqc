//
//  UIImage+Qqc.h
//  QqcBaseFramework
//
//  Created by qiuqinchuan on 15/9/8.
//  Copyright (c) 2015年 Qqc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Qqc)

//从某个bundle中，通过名字,从文件中获取image
+ (UIImage *)imageFromBundleWithName:(NSString *)strFullName bundleName:(NSString*)strBundleName;

@end
