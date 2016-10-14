//
//  TYImageViewViewController.m
//  image
//
//  Created by 汤义 on 16/9/29.
//  Copyright © 2016年 汤义. All rights reserved.
//

#import "TYImageViewViewController.h"

@interface TYImageViewViewController ()
@property (nonatomic, strong) UIImageView *imageView;
@property (nonatomic, strong) UIImage *images;
@end

@implementation TYImageViewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self initImage];
}

- (void)initImage {
    if (_imageView == nil) {
        _imageView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height - 64)];
    }
    
    _imageView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:_imageView];
    _imageView.image = _images;
}

- (void)setImageNmaeContentsOfFile:(NSString *)img {
    NSString *imgNmae = [NSString stringWithFormat:@"%@.jpg",img];
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *resourcePath = [bundle resourcePath];
    NSString *filePath = [resourcePath stringByAppendingPathComponent:imgNmae];
    UIImage *imgs = [UIImage imageWithContentsOfFile:filePath];
    _images = imgs;
}

- (void)setImageNmae:(NSString *)img {
    _images = [UIImage imageNamed:img];
}

- (void)dealloc {
    NSLog(@"我在这里消失了");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
