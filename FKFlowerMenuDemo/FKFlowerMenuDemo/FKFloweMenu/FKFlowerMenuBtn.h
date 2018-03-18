//
//  FKFlowerMenuBtn.h
//  FlowersBtnDemo
//
//  Created by fukang on 2018/1/31.
//  Copyright © 2018年 fukang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FKFlowerMenuItem.h"

typedef NS_ENUM (NSInteger, DirectionWay) {
    OnTheTopLeft = 0,      //左上方向
    OnTheTopRight,         //右上方向
    OnTheBottomLeft,       //左下方向
    OnTheBottomRight,      //右上方向
};

@interface FKFlowerMenuBtn : UIButton

/**散开的最大距离*/
@property (nonatomic , assign) CGFloat maxLength;
/**散开的最大角度*/
@property (nonatomic , assign) CGFloat maxRadian;
/**散开的方向*/
@property (nonatomic , assign) DirectionWay derectionWay;

/**是否需要旋转的动画效果*/
@property (nonatomic , assign) BOOL needAnimation;

/**设置散发出来的子item*/
- (void)addSubItems:(NSArray<FKFlowerMenuItem*>*)itemArr;

/**开花/闭花*/
- (void)flowersAction;

@end
