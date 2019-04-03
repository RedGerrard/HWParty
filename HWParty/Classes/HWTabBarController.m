//
//  HWTabBarController.m
//  HWRootVC_Example
//
//  Created by 袁海文 on 2019/4/3.
//  Copyright © 2019年 wozaizhelishua. All rights reserved.
//

#import "HWTabBarController.h"
#import "HWNavigationController.h"
#import "HWTabBar.h"

@implementation HWTabBarController

+(instancetype)shareInstance{
    static HWTabBarController *tabbarVC;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        tabbarVC = [HWTabBarController new];
    });
    return tabbarVC;
}

//+(instancetype)tabBarControllerWithAddChildVCsBlock:(void (^)(HWTabBarController *))addVCBlock{
//    HWTabBarController *tabbarVC = [HWTabBarController new];
//    if (addVCBlock) {
//        addVCBlock(tabbarVC);
//    }
//    return tabbarVC;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //换为自己的tabbar
    [self setValue:[[HWTabBar alloc] init] forKey:@"tabBar"];
    
}


/**
 根据参数, 创建并添加对应的子控制器

 @param vc 需要添加的控制器(会自动包装导航控制器)
 @param normalImageName 一般图片名称
 @param selectedImageName 选中图片名称
 @param title 标题
 @param isRequired 是否需要包装导航控制器
 */
- (void)addChildVC: (UIViewController *)vc normalImageName: (NSString *)normalImageName selectedImageName:(NSString *)selectedImageName title:(NSString *)title isRequiredNavController: (BOOL)isRequired {

    UIViewController *firstVC = nil;
    
    if (isRequired) {
        HWNavigationController *nav = [[HWNavigationController alloc] initWithRootViewController:vc];
        firstVC = nav;
    }else {
        
        firstVC = vc;
    }
    
    
    firstVC.tabBarItem = [[UITabBarItem alloc] initWithTitle:title image:[[UIImage imageNamed:normalImageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] selectedImage:[[UIImage imageNamed:selectedImageName]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
    [self addChildViewController:firstVC];

}

-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    if (item == _lastItem) {
        _itemState = false;
        
    }else{
        _itemState = true;
    }
    
    _lastItem = item;
    _lastIndex = (int)[tabBar.items indexOfObject:item];
}


- (void)setSelectedIndex:(NSUInteger)selectedIndex
{
    [super setSelectedIndex:selectedIndex];
    
    NSLog(@"%ld",selectedIndex);
//    UIViewController *vc = self.childViewControllers[selectedIndex];
//    if (vc.view.tag == 666) {
//        vc.view.tag = 888;
//
//        XMGMiddleView *middleView = [XMGMiddleView middleView];
//        middleView.middleClickBlock = [XMGMiddleView shareInstance].middleClickBlock;
//        middleView.isPlaying = [XMGMiddleView shareInstance].isPlaying;
//        middleView.middleImg = [XMGMiddleView shareInstance].middleImg;
//        CGRect frame = middleView.frame;
//        frame.size.width = 65;
//        frame.size.height = 65;
//        CGSize screenSize = [UIScreen mainScreen].bounds.size;
//        frame.origin.x = (screenSize.width - 65) * 0.5;
//        frame.origin.y = screenSize.height - 65;
//        middleView.frame = frame;
//        [vc.view addSubview:middleView];
//
//    }
}

@end
