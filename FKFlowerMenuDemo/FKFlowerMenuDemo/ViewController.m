//
//  ViewController.m
//  FlowersBtnDemo
//
//  Created by fukang on 2018/1/31.
//  Copyright © 2018年 fukang. All rights reserved.
//

#import "ViewController.h"
#import "FKFlowerMenuBtn.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet FKFlowerMenuBtn *leftFlowersBtn;

@property (weak, nonatomic) IBOutlet FKFlowerMenuBtn *rightFlowersBtn;

@property (weak, nonatomic) IBOutlet FKFlowerMenuBtn *leftFlowersBtn2;

@property (weak, nonatomic) IBOutlet FKFlowerMenuBtn *rightFlowersBtn2;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self configiureMenuItem];
}

- (void)configiureMenuItem {
    
    [self configureBtn1];
    [self configureBtn2];
    [self configureBtn3];
    [self configureBtn4];
}

- (void)configureBtn1 {
    
    FKFlowerMenuItem *item0 = [[FKFlowerMenuItem alloc] initWithImage:[UIImage imageNamed:@"add_mytask_askr.png"] withBounds:30 selectedBlock:^{
        NSLog(@"第1个");
    }];
    
    FKFlowerMenuItem *item1 = [[FKFlowerMenuItem alloc] initWithImage:[UIImage imageNamed:@"Task_Addphoto_Btn.png"] withBounds:30 selectedBlock:^{
        NSLog(@"第2个");
    }];
    
    FKFlowerMenuItem *item2 = [[FKFlowerMenuItem alloc] initWithImage:[UIImage imageNamed:@"add_mytask_askr.png"] withBounds:30 selectedBlock:^{
        NSLog(@"第3个");
    }];
    
    self.leftFlowersBtn2.maxLength = 75;
    self.leftFlowersBtn2.maxRadian = M_PI_4 * 3 ;
    self.leftFlowersBtn2.derectionWay = OnTheBottomRight;
    [self.leftFlowersBtn2 addSubItems:@[item0,item1,item2]];
}

- (void)configureBtn2 {
    
    FKFlowerMenuItem *item0 = [[FKFlowerMenuItem alloc] initWithImage:[UIImage imageNamed:@"add_mytask_askr.png"] withBounds:30 selectedBlock:^{
        NSLog(@"第1个");
    }];
    
    FKFlowerMenuItem *item1 = [[FKFlowerMenuItem alloc] initWithImage:[UIImage imageNamed:@"Task_Addphoto_Btn.png"] withBounds:30 selectedBlock:^{
        NSLog(@"第2个");
    }];
    
    FKFlowerMenuItem *item2 = [[FKFlowerMenuItem alloc] initWithImage:[UIImage imageNamed:@"add_mytask_askr.png"] withBounds:30 selectedBlock:^{
        NSLog(@"第3个");
    }];
    
    self.rightFlowersBtn2.maxLength = 75;
    self.rightFlowersBtn2.maxRadian = M_PI_2;
    self.rightFlowersBtn2.derectionWay = OnTheBottomLeft;
    self.rightFlowersBtn2.needAnimation = YES;
    [self.rightFlowersBtn2 addSubItems:@[item0,item1,item2]];
}

- (void)configureBtn3 {
    FKFlowerMenuItem *item0 = [[FKFlowerMenuItem alloc] initWithImage:[UIImage imageNamed:@"add_mytask_askr.png"] withBounds:30 selectedBlock:^{
        NSLog(@"第1个");
    }];
    
    FKFlowerMenuItem *item1 = [[FKFlowerMenuItem alloc] initWithImage:[UIImage imageNamed:@"Task_Addphoto_Btn.png"] withBounds:30 selectedBlock:^{
        NSLog(@"第2个");
    }];
    
    FKFlowerMenuItem *item2 = [[FKFlowerMenuItem alloc] initWithImage:[UIImage imageNamed:@"add_mytask_askr.png"] withBounds:30 selectedBlock:^{
        NSLog(@"第3个");
    }];
    
    self.leftFlowersBtn.maxLength = 75;
    self.leftFlowersBtn.maxRadian = M_PI_2;
    self.leftFlowersBtn.derectionWay = OnTheTopRight;
    [self.leftFlowersBtn addSubItems:@[item0,item1,item2]];
}

- (void)configureBtn4 {
    FKFlowerMenuItem *rightItem0 = [[FKFlowerMenuItem alloc] initWithImage:[UIImage imageNamed:@"add_mytask_askr.png"] withBounds:30 selectedBlock:^{
        NSLog(@"第1个");
    }];
    
    FKFlowerMenuItem *rightItem1 = [[FKFlowerMenuItem alloc] initWithImage:[UIImage imageNamed:@"Task_Addphoto_Btn.png"] withBounds:30 selectedBlock:^{
        NSLog(@"第2个");
    }];
    
    FKFlowerMenuItem *rightItem2 = [[FKFlowerMenuItem alloc] initWithImage:[UIImage imageNamed:@"add_mytask_askr.png"] withBounds:30 selectedBlock:^{
        NSLog(@"第3个");
    }];
    
    self.rightFlowersBtn.maxLength = 75;
    self.rightFlowersBtn.maxRadian = M_PI_2;
    self.rightFlowersBtn.derectionWay = OnTheTopLeft;
    [self.rightFlowersBtn addSubItems:@[rightItem0,rightItem1,rightItem2]];
}

- (IBAction)leftShowFlowers:(id)sender {
    [self.leftFlowersBtn flowersAction];
}

- (IBAction)rightShowFlowers:(id)sender {
    
    [self.rightFlowersBtn flowersAction];
}

- (IBAction)leftShowFlowers2:(id)sender {
    
    [self.leftFlowersBtn2 flowersAction];
}

- (IBAction)rightShowFlowers2:(id)sender {
    
    [self.rightFlowersBtn2 flowersAction];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
