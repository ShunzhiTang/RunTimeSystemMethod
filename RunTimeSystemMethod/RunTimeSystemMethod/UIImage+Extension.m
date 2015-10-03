//
//  UIImage+Extension.m
//  RunTimeSystemMethod
//
//  Created by mac on 15-10-3.
//  Copyright (c) 2015年 tsz. All rights reserved.
//

#import "UIImage+Extension.h"
#import <objc/runtime.h>
@implementation UIImage (Extension)
//load方法的调用时间：当某个类或者分类加载到内存就会调用一次
+ (void)load{
    NSLog(@"%s",__func__);
    
    Method m1 = class_getClassMethod([UIImage class], @selector(imageNamed:));
    Method m2 =  class_getClassMethod([UIImage class], @selector(TF_imageNamed:));
    //交换d
    method_exchangeImplementations(m1, m2);
    
}

//重写方法
+ (UIImage *)TF_imageNamed:(NSString *)name{
    
    double version = [[UIDevice currentDevice].systemVersion doubleValue];
    
    if ( version >= 7.0) {
        name = [name stringByAppendingString:@"_ios7"];
        
    }
    //交换之后 TF_imageNamed 就是imageNamed ，所以这个return就是系统的方法，这个要注意
    
    return [UIImage TF_imageNamed:name];
}
@end
