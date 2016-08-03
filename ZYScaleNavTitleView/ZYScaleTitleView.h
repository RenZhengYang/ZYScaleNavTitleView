/**使用方法:
 
 1.导入类 ZYScaleTitleView 到您的工程中
 2.在所需界面中，导入头文件   #import "ZYScaleTitleView.h"
 @property(strong,nonatomic)ZYScaleTitleView *ZYtitleView;
 3.在viewDidLoad中
 self.ZYtitleView = [[ZYScaleTitleView alloc]initWithTitleViewImageName:@"114"];
 self.navigationItem.titleView = self.ZYtitleView;
  4.在ViewDidScroll:中调去
 - (void)scrollViewDidScroll:(UIScrollView *)scrollView
 {
 
   [self.ZYtitleView ScaleTitleView:scrollView];
 
 }
 
*/
#import <UIKit/UIKit.h>

@interface ZYScaleTitleView : UIView

/**需滚动监听调用，TitleView放大缩小*/
- (void)ScaleTitleView:(UIScrollView *)scrollView;

/**返回初始化一个添加完圆形imageView的对象*/
- (ZYScaleTitleView*)initWithTitleViewImageName:(NSString *)ImgName;
@end
