//
//  ViewOperation.m
//  MPSpeedy
//
//  Created by MPLife.com on 15/4/14.
//  Copyright (c) 2015年 MPLife.com. All rights reserved.
//

#import "ViewOperation.h"

@implementation ViewOperation

UIView *InsertNormalView(id subviews, UIColor *backgroudColor, CGRect rect){
   return InsertBorderView(subviews, backgroudColor, rect, NO);
}

UIView *InsertBorderView(id subviews, UIColor *backgroudColor, CGRect rect, BOOL isBorder){
    UIView *views = [[UIView alloc]initWithFrame:rect];
    if ([backgroudColor isKindOfClass:[UIColor class]]) {
        [views setBackgroundColor:backgroudColor];
    }
    if (isBorder) {
        views.layer.masksToBounds = YES;
        views.layer.cornerRadius = 10.0f;
    }
    [subviews addSubview:views];
    
    return views;
}

UIButton *InsertImageButton(id subviews, CGRect rect, UIImage *image){
    return InsertImageAndTitleButton(subviews, rect, image, nil, nil, nil);
}

UIButton *InsertImageAndTitleButton(id subviews, CGRect rect, UIImage *image, NSString *title, UIFont *titleFont, UIColor *titleColor){
    UIButton *btnImage = [[UIButton alloc]initWithFrame:rect];
    if ([image isKindOfClass:[UIImage class]]) {
        [btnImage setBackgroundImage:image forState:UIControlStateNormal];
    }
    if (nullToString(title).length > 0) {
        [btnImage setTitle:title forState:UIControlStateNormal];
    }
    if ([titleColor isKindOfClass:[UIColor class]]) {
        [btnImage setTitleColor:titleColor forState:UIControlStateNormal];
    }
    if ([titleFont isKindOfClass:[UIFont class]]) {
        btnImage.titleLabel.font = titleFont;
    }
    return btnImage;
}


@end
