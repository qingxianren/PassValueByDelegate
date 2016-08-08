//
//  UserEntity.h
//  PassValueByDelegate
//
//  Created by 唐韧 on 12-8-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserEntity : NSObject
{
    NSString *userName;
    NSString *gendar;
    int age;
}

@property(nonatomic,strong) NSString *userName;
@property(nonatomic,strong) NSString *gendar;
@property(assign) int age;

@end
