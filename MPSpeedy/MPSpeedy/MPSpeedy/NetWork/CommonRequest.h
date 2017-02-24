//
//  CommonRequest.h
//  MPSpeedy
//
//  Created by MPLife.com on 15/4/13.
//  Copyright (c) 2015年 MPLife.com. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^RequestSucessBlock)(id dicResult);
typedef void (^RequestFailedBlock)(NSError *error);

@interface CommonRequest : NSObject<NSURLConnectionDelegate>
/**
 *  post请求方式
 *
 *  @param url         请没地方链接地地
 *  @param params      请求参数
 *  @param sucessBlock 请求成功回调Block
 *  @param faildBolck  请求失败回调Block
 */
- (void)getRequestUrl:(NSString *)url params:(NSDictionary *)params sucessBlock:(RequestSucessBlock)sucessBlock FaildBlock:(RequestFailedBlock)faildBolck;
/**
 *  get请求方式
 *
 *  @param url         请没地方链接地地
 *  @param params      请求参数
 *  @param sucessBlock 请求成功回调Block
 *  @param faildBolck  请求失败回调Block
 */
- (void)postReuestUrl:(NSString *)url Params:(NSDictionary *)params sucessBlock:(RequestSucessBlock)sucessBlock FaildBlock:(RequestFailedBlock)faildBolck;
/**
 *  commmonRequest单便
 *
 *  @return commmonRequest
 */
+ (CommonRequest *)sharedObject;
@end
    
