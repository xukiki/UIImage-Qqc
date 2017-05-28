//
//  UIImage+Qqc.m
//  QqcBaseFramework
//
//  Created by qiuqinchuan on 15/9/8.
//  Copyright (c) 2015年 Qqc. All rights reserved.
//

#import "UIImage+Qqc.h"

@implementation UIImage (Qqc)

+ (UIImage *)imageFromBundleWithName:(NSString *)strFullName bundleName:(NSString*)strBundleName
{
    UIImage* imageRet;
    NSString* strName;
    NSString* strType;
    NSRange rang = [strFullName rangeOfString:@"." options:NSBackwardsSearch];
    if (rang.length > 0)
    {
        strName = [strFullName substringToIndex:rang.location];
        
        if ([UIScreen mainScreen].scale == 2) {
            strName = [strName stringByAppendingString:@"@2x"];
        }else if([UIScreen mainScreen].scale == 3){
            strName = [strName stringByAppendingString:@"@3x"];
        }
        
        strType = [strFullName substringFromIndex:rang.location+1];
    }else{
        strName = strFullName;
        strType = @"png";
    }
    
    NSBundle* bundle = nil;
    NSString* strBundlePath = nil;
    if (strBundleName && ![strBundleName isEqualToString:@""]){
        strBundlePath = [[NSBundle mainBundle] pathForResource:strBundleName ofType:@"bundle"];
    }
    
    if (nil == strBundlePath){
        bundle = [NSBundle mainBundle];
    }else{
        bundle = [NSBundle bundleWithPath:strBundlePath];
    }
    
    if (bundle){
        NSString* strImgPath = [bundle pathForResource:strName ofType:strType];
        imageRet = [UIImage imageWithContentsOfFile:strImgPath];
    }
    
    return imageRet;
}

@end
