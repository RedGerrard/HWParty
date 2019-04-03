//
//  HWParty.m
//  HWRootVC_Example
//
//  Created by 袁海文 on 2019/4/3.
//  Copyright © 2019年 wozaizhelishua. All rights reserved.
//

#import "HWParty.h"
#import "HWTabBarController.h"

@implementation HWParty
+ (HWTabBarController *)rootTabBarCcontroller {
    return [HWTabBarController shareInstance];
}


+ (void)addChildVC:(UIViewController *)vc normalImageName:(NSString *)normalImageName selectedImageName:(NSString *)selectedImageName  title:(NSString *)title isRequiredNavController:(BOOL)isRequired {
    
    
    [[HWTabBarController shareInstance]addChildVC:vc normalImageName:normalImageName selectedImageName:selectedImageName title:title isRequiredNavController:isRequired];
    
}


+(void)setTabBarColorNormal:(UIColor *)normal andSelected:(UIColor *)selected{
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:normal} forState:UIControlStateNormal];
    [[UITabBarItem appearance] setTitleTextAttributes:@{NSForegroundColorAttributeName:selected} forState:UIControlStateSelected];
}
@end
