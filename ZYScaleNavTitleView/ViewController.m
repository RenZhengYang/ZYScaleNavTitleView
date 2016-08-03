//
//  ViewController.m
//  ZYScaleNavTitleView
//
//  Created by mac on 16/7/29.
//  Copyright © 2016年 mac. All rights reserved.
//

#import "ViewController.h"

#import "ZYScaleTitleView.h"

static NSString *resuId  = @"cellId";

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

/**tableView*/
@property(strong,nonatomic)UITableView *tableView;
@property(strong,nonatomic)ZYScaleTitleView *ZYtitleView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self layoutTabView];
    
    
    self.ZYtitleView = [[ZYScaleTitleView alloc]initWithTitleViewImageName:@"114"];
    self.navigationItem.titleView = self.ZYtitleView;

    
    
}

#pragma mark - 设置tableView
- (void)layoutTabView{

    _tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    [self.view addSubview:_tableView];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:resuId];
}

#pragma 数据源方法
/**返回行*/
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
   return 20;
}

/**cell的样式*/
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:resuId forIndexPath:indexPath];
    if (!cell) cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:resuId];

    cell.textLabel.text = @"谦虚学习~热爱生命";
    return cell;

}

#pragma UIScrollViewDelegate
/**监听tableView滚动*/
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{

    [self.ZYtitleView ScaleTitleView:scrollView];


}


@end
