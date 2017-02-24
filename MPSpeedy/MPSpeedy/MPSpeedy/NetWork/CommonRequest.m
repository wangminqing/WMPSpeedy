//
//  CommonRequest.m
//  MPSpeedy
//
//  Created by MPLife.com on 15/4/13.
//  Copyright (c) 2015年 MPLife.com. All rights reserved.
//

#import "CommonRequest.h"
#import "AFHTTPRequestOperationManager.h"


@implementation CommonRequest

+ (CommonRequest *)sharedObject{
    static CommonRequest *shareInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        shareInstance = [[CommonRequest alloc]init];
    });
    
    return shareInstance;
}

- (void)postReuestUrl:(NSString *)url Params:(NSDictionary *)params sucessBlock:(RequestSucessBlock)sucessBlock FaildBlock:(RequestFailedBlock)faildBolck{
    
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc]init];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        sucessBlock(responseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        faildBolck(error);
    }];
}

- (void)getRequestUrl:(NSString *)url params:(NSDictionary *)params sucessBlock:(RequestSucessBlock)sucessBlock FaildBlock:(RequestFailedBlock)faildBolck{
    
    AFHTTPRequestOperationManager *manager = [[AFHTTPRequestOperationManager alloc]init];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    [manager POST:url parameters:params success:^(AFHTTPRequestOperation *operation, id responseObject) {
        sucessBlock(responseObject);
        
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        faildBolck(error);
    }];
}

@end
