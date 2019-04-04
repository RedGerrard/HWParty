//
//  HWTabBarController.h
//  HWRootVC_Example
//
//  Created by 袁海文 on 2019/4/3.
//  Copyright © 2019年 wozaizhelishua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HWTabBarController : UITabBarController

/**
 上次选中的index
 */
@property (nonatomic, assign) int lastIndex;

/**
 上次选中的lastItem
 */
@property (nonatomic, strong) UITabBarItem *lastItem;

/**
 是否能选中tabbar
 */
@property (nonatomic, assign) BOOL itemState;

/**
 获取单例对象
 
 @return TabBarController
 */
+ (instancetype)shareInstance;



/**
 添加子控制器
 
 @param vc                子控制器
 @param normalImageName   普通状态下图片
 @param selectedImageName 选中图片
 @param title             标题
 @param isRequired        是否需要包装导航控制器
 */
- (void)addChildVC: (UIViewController *)vc normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName title:(NSString *)title isRequiredNavController: (BOOL)isRequired;
@end
