//
//  HWTabBar.m
//  HWRootVC_Example
//
//  Created by 袁海文 on 2019/4/3.
//  Copyright © 2019年 wozaizhelishua. All rights reserved.
//

#import "HWTabBar.h"

@implementation HWTabBar

-(void)layoutSubviews {
    [super layoutSubviews];
    
    
    NSInteger count = self.items.count;
    
    // 1. 遍历所有的子控件
    NSArray *subViews = self.subviews;
    
    // 确定单个控件的大小
    
    CGFloat btnW = self.frame.size.width / count;
    CGFloat btnH = self.frame.size.height;
    CGFloat btnY = 5;
    
    NSInteger index = 0;
    for (UIView *subView in subViews) {
        if ([subView isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            
            if (self.items[index].title == nil) {
                CGFloat btnX = index * btnW;
                subView.frame = CGRectMake(btnX, btnY, btnW, btnH);
            }
            
            index ++;
        }
    }
   
}

@end
