//
//  FKFlowerMenuItem.h
//  FlowersBtnDemo
//
//  Created by fukang on 2018/1/31.
//  Copyright © 2018年 fukang. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^SelectedBlock)(void);

@interface FKFlowerMenuItem : UIView

@property (nonatomic, strong) SelectedBlock selectedBlock;

- (id)initWithImage:(UIImage *)image withBounds:(CGFloat)bounds selectedBlock:(SelectedBlock)selectedBlock;

@end
