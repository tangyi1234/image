//
//  TYimageWithViewController.m
//  image
//
//  Created by 汤义 on 16/9/28.
//  Copyright © 2016年 汤义. All rights reserved.
//

#import "TYimageWithViewController.h"
#import "TYnameTableViewCell.h"
#import "TYImageViewViewController.h"

@interface TYimageWithViewController ()<UITableViewDelegate ,UITableViewDataSource>
@property (nonatomic, weak) UITableView *tableView;
@end

@implementation TYimageWithViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initTableView];
    self.view.backgroundColor = [UIColor whiteColor];
//    [self initImage];
}
- (void)initTableView {
    if (_tableView == nil) {
        UITableView *views = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        [self.view addSubview:_tableView = views];
    }
    _tableView.delegate = self;
    _tableView.dataSource = self;
}

- (void)initImage {
    UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(0, 64, [UIScreen mainScreen].bounds.size.width, 300)];
    image.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:image];
    
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *resourcePath = [bundle resourcePath];
    NSString *filePath = [resourcePath stringByAppendingPathComponent:@"942.png"];
    UIImage *img = [UIImage imageWithContentsOfFile:filePath];
    image.image = img;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TYnameTableViewCell *cell = [TYnameTableViewCell nameTableViewCell:tableView];
    NSString *str = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    [cell ContentsImage:str];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *str = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    TYImageViewViewController *imageView = [[TYImageViewViewController alloc] init];
    [imageView setImageNmaeContentsOfFile:str];
    [self.navigationController pushViewController:imageView animated:YES];
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
