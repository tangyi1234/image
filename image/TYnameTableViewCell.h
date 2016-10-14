//
//  TYnameTableViewCell.h
//  image
//
//  Created by 汤义 on 16/9/28.
//  Copyright © 2016年 汤义. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TYnameTableViewCell : UITableViewCell
+ (instancetype)nameTableViewCell:(UITableView *)tableView;
- (void)nameImage:(NSString *)image;
- (void)ContentsImage:(NSString *)image;
@end
