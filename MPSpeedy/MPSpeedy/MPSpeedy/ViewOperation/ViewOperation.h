//
//  ViewOperation.h
//  MPSpeedy
//
//  Created by MPLife.com on 15/4/14.
//  Copyright (c) 2015年 MPLife.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StringOperation.h"
#import <UIKit/UIKit.h>
@interface ViewOperation : NSObject

#pragma mark ==================> UIView
/**
*  添加普通View
*
*  @param subviews       承载控件父视图
*  @param backgroudColor 背影颜色
*  @param rect           view 尺寸大小
*
*  @return view
*/
UIView *InsertNormalView(id subviews, UIColor *backgroudColor, CGRect rect);
/**
 *  添加带加框view
 *
 *  @param subviews       承载控件父视图
 *  @param backgroudColor 背影颜色
 *  @param rect           view 尺寸大小
 *  @param isBorder       是否带边框
 *
 *  @return view
 */
UIView *InsertBorderView(id subviews, UIColor *backgroudColor, CGRect rect, BOOL isBorder);

#pragma mark ==================> UIButton
/**
 *  添加图片按钮
 *
 *  @param subviews 承载控件父视图
 *  @param rect     button 尺寸，坐标
 *  @param image    button 图片
 *
 *  @return button
 */
UIButton *InsertImageButton(id subviews, CGRect rect, UIImage *image, int tag, id target, SEL action);
/**
 *  添加图文混搭按钮
 *
 *  @param subviews   承载控件父视图
 *  @param rect       view 尺寸大小
 *  @param image      button 图片
 *  @param title      button 标题
 *  @param titleFont  button标题字体
 *  @param titleColor button标题字体颜色
 *
 *  @return button
 */
UIButton *InsertImageAndTitleButton(id subviews, CGRect rect, UIImage *image, NSString *title, UIFont *titleFont, UIColor *titleColor);







UIAlertView *AlertSetString(NSString *title, NSString *cancel, NSString *ok, NSString *set, NSInteger tag, id delegate, SEL selector);

@end
