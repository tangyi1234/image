//
//  ViewController.m
//  image
//
//  Created by 汤义 on 16/9/28.
//  Copyright © 2016年 汤义. All rights reserved.
//

#import "ViewController.h"
#import "TYimageWithViewController.h" 
#import "TYimageNamedViewController.h"
#import "TYImagePerformanceViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor whiteColor];
    [self initButton];
}

- (void)initButton {
    UIButton *but1 = [UIButton buttonWithType:UIButtonTypeCustom];
    but1.frame = CGRectMake(100, 100, 100, 40);
    [but1 setTitleColor:[UIColor redColor] forState:UIControlStateNormal ];
    [but1 setTitle:@"按钮1" forState:UIControlStateNormal];
    [but1 addTarget:self action:@selector(selectorBut) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but1];
    
    UIButton *but2 = [UIButton buttonWithType:UIButtonTypeCustom];
    but2.frame = CGRectMake(100, 200, 100, 40);
    [but2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal ];
    [but2 setTitle:@"按钮2" forState:UIControlStateNormal];
    [but2 addTarget:self action:@selector(selectorButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but2];
    
    UIButton *but3 = [UIButton buttonWithType:UIButtonTypeCustom];
    but3.frame = CGRectMake(100, 300, 100, 40);
    [but3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal ];
    [but3 setTitle:@"添加按钮1" forState:UIControlStateNormal];
    [but3 addTarget:self action:@selector(selectorAddBut) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but3];
    
    UIButton *but4 = [UIButton buttonWithType:UIButtonTypeCustom];
    but4.frame = CGRectMake(100, 400, 100, 40);
    [but4 setTitleColor:[UIColor redColor] forState:UIControlStateNormal ];
    [but4 setTitle:@"添加按钮2" forState:UIControlStateNormal];
    [but4 addTarget:self action:@selector(selectorAddButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:but4];

}

- (void)selectorBut {
    TYimageWithViewController *withView = [[TYimageWithViewController alloc] init];
    [self.navigationController pushViewController:withView animated:YES];
}

- (void)selectorButton {
    TYimageNamedViewController *nameView = [[TYimageNamedViewController alloc] init];
    [self.navigationController pushViewController:nameView animated:YES];
}

- (void)selectorAddBut {
    TYImagePerformanceViewController *performanceView = [[TYImagePerformanceViewController alloc] init];
    performanceView.type = YES;
    [self.navigationController pushViewController:performanceView animated:YES];
}

- (void)selectorAddButton {
    TYImagePerformanceViewController *performanceView = [[TYImagePerformanceViewController alloc] init];
    performanceView.type = NO;
    [self.navigationController pushViewController:performanceView animated:YES];
}

- (void)dealloc {
    NSLog(@"我在这里消失了");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
