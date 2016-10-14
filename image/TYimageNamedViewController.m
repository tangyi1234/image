//
//  TYimageNamedViewController.m
//  image
//
//  Created by 汤义 on 16/9/28.
//  Copyright © 2016年 汤义. All rights reserved.
//

#import "TYimageNamedViewController.h"
#import "TYnameTableViewCell.h"
#import "TYImageViewViewController.h"

@interface TYimageNamedViewController ()<UITableViewDelegate ,UITableViewDataSource>
@property (nonatomic, weak) UITableView *tableView;
@end

@implementation TYimageNamedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self initTableView];
}

- (void)initTableView {
    if (_tableView == nil) {
        UITableView *views = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds];
        [self.view addSubview:_tableView = views];
    }
    _tableView.delegate = self;
    _tableView.dataSource = self;
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
    [cell nameImage:str];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *str = [NSString stringWithFormat:@"%ld",(long)indexPath.row];
    TYImageViewViewController *imageView = [[TYImageViewViewController alloc] init];
    [imageView setImageNmae:str];
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
