//
//  ViewController.m
//  RunTimeSystemMethod
//
//  Created by mac on 15-10-3.
//  Copyright (c) 2015年 tsz. All rights reserved.
//

#import "ViewController.h"

#import "UIImage+Extension.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *startImage;


@property (weak, nonatomic) IBOutlet UIImageView *closeImage;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //这是你拟物化的图片，现在需要转换为扁平化 ，如果工作量很大的话  怎么办？，写一个分类使用运行时去解决
    //在这里调用这个方法其实是调用我自定义的TF_imageNamed：方法
    self.startImage.image = [UIImage imageNamed:@"start"];
    
    self.closeImage.image = [UIImage imageNamed:@"close"];
    
}

@end
