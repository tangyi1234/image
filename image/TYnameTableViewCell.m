//
//  TYnameTableViewCell.m
//  image
//
//  Created by 汤义 on 16/9/28.
//  Copyright © 2016年 汤义. All rights reserved.
//

#import "TYnameTableViewCell.h"
@interface TYnameTableViewCell ()
@property (nonatomic ,strong) UIImageView *imageViews;
@end
@implementation TYnameTableViewCell
+ (instancetype)nameTableViewCell:(UITableView *)tableView {
    static NSString *ID = @"cell";
    TYnameTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:ID];
    if (cell == nil) {
        cell = [[TYnameTableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:ID];
        [cell initView];
    }
    return cell;
}

- (void)initView {
    if (_imageViews == nil) {
        _imageViews = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 200, 100)];
//        _imageViews = image;
    }
    _imageViews.backgroundColor = [UIColor redColor];
    [self addSubview:_imageViews];
}

- (void)nameImage:(NSString *)image {
    _imageViews.image = [UIImage imageNamed:image];
}

- (void)ContentsImage:(NSString *)image {
    NSString *imgName = [NSString stringWithFormat:@"%@.jpg",image];
    NSBundle *bundle = [NSBundle mainBundle];
    NSString *resourcePath = [bundle resourcePath];
    NSString *filePath = [resourcePath stringByAppendingPathComponent:imgName];
    UIImage *img = [UIImage imageWithContentsOfFile:filePath];
    _imageViews.image = img;
}

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
