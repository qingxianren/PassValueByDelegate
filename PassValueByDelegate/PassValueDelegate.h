//
//  PassValueDelegate.h
//  PassValueByDelegate
//
//  Created by 唐韧 on 12-8-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
@class UserEntity;

@protocol PassValueDelegate <NSObject>

-(void)passValue:(UserEntity *)value;

@end
