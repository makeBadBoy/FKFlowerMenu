//
//  FKFlowerMenuItem.m
//  FlowersBtnDemo
//
//  Created by fukang on 2018/1/31.
//  Copyright © 2018年 fukang. All rights reserved.
//

#import "FKFlowerMenuItem.h"

@interface FKFlowerMenuItem ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation FKFlowerMenuItem

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithImage:(UIImage *)image withBounds:(CGFloat)bounds selectedBlock:(SelectedBlock)selectedBlock
{
    if (self = [super init]) {
        
        self.bounds = CGRectMake(0, 0, bounds, bounds);
        
        self.imageView = [[UIImageView alloc] initWithImage:image];
        self.imageView.frame = self.bounds;
        self.imageView.image = image;
        [self addSubview:self.imageView];
        
        self.selectedBlock = selectedBlock;
        
        UITapGestureRecognizer *tapAction = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(clickView)];
        [self addGestureRecognizer:tapAction];
    }
    return self;
}

- (void)clickView {
    if (self.selectedBlock) {
        self.selectedBlock();
    }
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
