//
//  ViewController.m
//  bainbian
//
//  Created by FC on 2017/4/27.
//  Copyright © 2017年 God bless never bug. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    CAGradientLayer *gradientLayer = [CAGradientLayer layer];
//    gradientLayer.colors = @[(__bridge id)[UIColor redColor].CGColor, (__bridge id)[UIColor whiteColor].CGColor, (__bridge id)[UIColor grayColor].CGColor];
////    gradientLayer.locations = @[@0, @0, @0.3];
//    gradientLayer.startPoint = CGPointMake(0, 0);
//    gradientLayer.endPoint = CGPointMake(0, 1.0);
//    gradientLayer.frame = CGRectMake(0, 100, 300, 300);
//    [self.view.layer addSublayer:gradientLayer];

    UIView *view = [[UIView alloc] initWithFrame:self.view.bounds];
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    
    //设置开始和结束位置(设置渐变的方向)
    
    gradient.startPoint = CGPointMake(0, 1.0);
    
    gradient.endPoint = CGPointMake(0, 0);
    
    gradient.frame =CGRectMake(100,100,400,400);
    
    gradient.colors = [NSArray arrayWithObjects:(id)[UIColor colorWithWhite:0.8 alpha:0.8].CGColor,(id)[UIColor whiteColor].CGColor,nil];
    
    [view.layer insertSublayer:gradient atIndex:0];
    
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
