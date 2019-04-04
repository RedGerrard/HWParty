//
//  HWParty.h
//  HWRootVC_Example
//
//  Created by 袁海文 on 2019/4/3.
//  Copyright © 2019年 wozaizhelishua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HWTabBarController.h"

@interface HWParty : NSObject
/**
 获取根控制器
 
 @return rootTabBarCcontroller
 */
+ (HWTabBarController *)rootTabBarCcontroller;
 
/**
 添加子控制器
 
 @param vc                子控制器
 @param normalImageName   普通状态下图片
 @param selectedImageName 选中图片
 @param title             标题
 @param isRequired        是否需要包装导航控制器
 */
+ (void)addChildVC: (UIViewController *)vc normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName title:(NSString *)title isRequiredNavController: (BOOL)isRequired;


/**
 设置tabbar文字颜色
 
 @param normal 普通状态下颜色
 @param selected 选中状态下颜色
 */
+(void)setTabBarColorNormal:(UIColor *)normal andSelected:(UIColor *)selected;
@end
