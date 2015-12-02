//
//  QUYLActivity.h
//  turnImage
//  Created by shuzhenguo on 14-8-27.
//  Copyright (c) 2014年 shuzhenguo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZHWActivity : UIButton
{
    BOOL animating;
    
    CGFloat  _animatingValue;
    
}
@property(nonatomic,strong)UIView *bgView;
@property (nonatomic) CGFloat animationDuration;
+(ZHWActivity *)getActivity;
/*
 
 需要缓冲图片qy_loading.png
*/

//初始化缓冲  2为正常速度
-(void)startActivity:(UIView *)view  AnimatingValue:(CGFloat)value   bufferWidth:(CGFloat )width  bufferHeight:(CGFloat)height;

//判断动画
- (BOOL)isAnimating;

//消失
- (void)stopAnimating;

//转动速度


@end
