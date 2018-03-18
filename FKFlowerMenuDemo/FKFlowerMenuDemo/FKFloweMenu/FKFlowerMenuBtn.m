//
//  FKFlowerMenuBtn.m
//  FlowersBtnDemo
//
//  Created by fukang on 2018/1/31.
//  Copyright © 2018年 fukang. All rights reserved.
//

#import "FKFlowerMenuBtn.h"

@interface FKFlowerMenuBtn ()

/**子菜单的数据*/
@property (nonatomic , strong) NSArray *itemArr;
/**是否是展开状态*/
@property (nonatomic , assign) BOOL isOpenFlowers;

@end

@implementation FKFlowerMenuBtn

- (instancetype)initWithFrame:(CGRect)frame   {
    self = [super initWithFrame:frame];
    if (self) {

        self.frame = frame;
    }
    return self;
}

- (void)addSubItems:(NSArray<FKFlowerMenuItem*>*)itemArr {
    self.itemArr = itemArr;
    for (FKFlowerMenuItem *item in self.itemArr) {
        item.center = self.center;
        item.hidden = YES;
        [[self superview] addSubview:item];
    }
}

- (void)flowersAction {
    if (self.isOpenFlowers) {
        [self closeFlowers];
    }
    else {
        [self showFlowers];
    }
}

- (void)showFlowers {
    
    if (self.needAnimation) {
        [self rotationAngle:M_PI_4];
    }
    
    for (NSInteger i = 0 ; i < self.itemArr.count ; i ++) {
        [self flowersMenuAtIndex:i];
    }
    self.isOpenFlowers = !self.isOpenFlowers;
}

- (void)closeFlowers {
    
    if (self.needAnimation) {
        [self rotationAngle:0];
    }
    
    for (NSInteger i = 0 ; i < self.itemArr.count ; i ++) {
        [self closeMenuAtIndex:i];
    }
    self.isOpenFlowers = !self.isOpenFlowers;
}

- (void)flowersMenuAtIndex:(NSInteger)index {
    
    FKFlowerMenuItem *menuItem = (FKFlowerMenuItem*)self.itemArr[index];
    menuItem.hidden = NO;
    [UIView animateWithDuration:0.3 animations:^{
        
        CGFloat radian = self.maxRadian / (self.itemArr.count - 1) * index;
        CGFloat y = self.maxLength * sin(radian);
        CGFloat x = self.maxLength * cos(radian);
        
        if (self.derectionWay == OnTheTopRight) {
            menuItem.center = CGPointMake(self.center.x + x, self.center.y - y);
        }
        else if (self.derectionWay == OnTheTopLeft) {
            menuItem.center = CGPointMake(self.center.x - x, self.center.y - y);
        }
        else if (self.derectionWay == OnTheBottomLeft) {
            menuItem.center = CGPointMake(self.center.x - x, self.center.y + y);
        }
        else if (self.derectionWay == OnTheBottomRight) {
            menuItem.center = CGPointMake(self.center.x + x, self.center.y + y);
        }
    }];
}

- (void)closeMenuAtIndex:(NSInteger)index {
    FKFlowerMenuItem *menuItem = (FKFlowerMenuItem*)self.itemArr[index];
    [UIView animateWithDuration:0.3 animations:^{
        menuItem.center = CGPointMake(self.center.x, self.center.y);
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.25 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            menuItem.hidden = YES;
        });
    }];
}

- (void)rotationAngle:(CGFloat)redian {
    
    [UIView animateWithDuration:0.2 animations:^{
        self.transform = CGAffineTransformMakeRotation(redian);
    }];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
