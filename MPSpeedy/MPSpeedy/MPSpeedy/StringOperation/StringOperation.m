//
//  StringOperation.m
//  MPSpeedy
//
//  Created by MPLife.com on 15/4/14.
//  Copyright (c) 2015年 MPLife.com. All rights reserved.
//

#import "StringOperation.h"

@implementation StringOperation

NSString *nullToString(id stringValue){
    NSString *string = @"";
    if ([stringValue isKindOfClass:[NSNull class]]){
        string = @"";
    }else if ([stringValue isKindOfClass:[NSNumber class]]) {
        string = [stringValue stringValue];
    }else if ([stringValue isKindOfClass:[NSString class]]){
        string = stringValue;
    }else if ([stringValue isKindOfClass:[NSDictionary class]]){
        string = stringValue;
    }else if ([stringValue isKindOfClass:[NSObject class]]){
        string = stringValue;
    }
    return string;
}

@end
