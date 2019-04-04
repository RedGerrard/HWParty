//
//  HWNavigationController.m
//  HWRootVC_Example
//
//  Created by 袁海文 on 2019/4/3.
//  Copyright © 2019年 wozaizhelishua. All rights reserved.
//

#import "HWNavigationController.h"

@interface HWNavigationController ()

@end

@implementation HWNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSArray *targets = [self.interactivePopGestureRecognizer valueForKey:@"_targets"];
    id targetObjc = targets[0];
    id target = [targetObjc valueForKeyPath:@"_target"];
    self.interactivePopGestureRecognizer.enabled = NO;
    UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:target action:@selector(handleNavigationTransition:)];
    [self.view addGestureRecognizer:pan];
    
}
-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    viewController.hidesBottomBarWhenPushed = true;
    [super pushViewController:viewController animated:animated];
    
}

@end
