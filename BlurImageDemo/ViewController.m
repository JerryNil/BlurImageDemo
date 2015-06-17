//
//  ViewController.m
//  BlurImageDemo
//
//  Created by mamba on 15/6/17.
//  Copyright (c) 2015年 QuanWai.Inc. All rights reserved.
//

#import "ViewController.h"
#import <UIImage+BlurredFrame/UIImage+BlurredFrame.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    // base on vImage
    UIImageView *blurImageView = [[UIImageView alloc] initWithFrame:CGRectMake(100, 100, 200, 300)];
    blurImageView.contentMode = UIViewContentModeScaleAspectFit;
    blurImageView.backgroundColor = [UIColor redColor];
    UIImage *blurImage = [UIImage imageNamed:@"0"];

    CGRect rect = CGRectMake(0, 200, 200, 100);
    blurImage = [blurImage applyLightEffectAtFrame:rect];
    blurImageView.image = blurImage;
    [self.view addSubview:blurImageView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
