//
//  UIImage+Qqc.h
//  QqcBaseFramework
//
//  Created by qiuqinchuan on 15/9/8.
//  Copyright (c) 2015年 Qqc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Qqc)


/**
 *  从某个bundle中获取图片
 *
 *  @param strFullName   图片全名
 *  @param strBundleName bundle 的名称（不带.bundle后缀）
 *
 *  @return 图片对象
 */
+ (UIImage *)imageFromBundleWithName:(NSString *)strFullName bundleName:(NSString*)strBundleName;

@end
