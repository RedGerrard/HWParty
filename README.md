<h1 align="center"> HWParty</h1>自用的TabbarController框架

## How To Use
```
#import <HWParty.h>
...
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
UITabBarController *rootVC = [HWParty rootTabBarCcontroller];
//    icon_user_nav_a
[HWParty addChildVC:[UIViewController new] normalImageName:@"icon_user_nav_a" selectedImageName:@"icon_user_nav_a_a"  title:@"首页" isRequiredNavController:NO];
[HWParty addChildVC:[UIViewController new] normalImageName:@"icon_user_nav_b" selectedImageName:@"icon_user_nav_b_a" title:@"方案" isRequiredNavController:YES];
[HWParty addChildVC:[UIViewController new] normalImageName:@"icon_user_nav_c" selectedImageName:@"icon_user_nav_c_a" title:@"掌上操盘" isRequiredNavController:NO];
[HWParty addChildVC:[UIViewController new] normalImageName:@"icon_user_nav_d" selectedImageName:@"icon_user_nav_d_a" title:@"我的" isRequiredNavController:YES];

rootVC.delegate = self;

self.window.rootViewController = rootVC;
[self.window makeKeyAndVisible];
return YES;
}
```

## Installation

HWCyclePics is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'HWParty'
```

## Author
本人小菜鸟一枚，欢迎各位同仁和大神指教
<br>我的简书是：https://www.jianshu.com/u/cdd48b9d36e0
<br>我的邮箱是：417705652@qq.com

## Licenses

All source code is licensed under the [MIT License](https://raw.github.com/SDWebImage/SDWebImage/master/LICENSE).
