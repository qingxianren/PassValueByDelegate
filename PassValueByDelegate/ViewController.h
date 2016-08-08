//
//  ViewController.h
//  PassValueByDelegate
//
//  Created by 唐韧 on 12-8-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PassValueDelegate.h"

//第一个窗口遵守PassValueDelegate
@interface ViewController : UIViewController<PassValueDelegate>

@property (retain, nonatomic) IBOutlet UILabel *nameLabel;
@property (retain, nonatomic) IBOutlet UILabel *ageLabel;
@property (retain, nonatomic) IBOutlet UILabel *gendarLabel;

- (IBAction)openBtnClicked:(id)sender;

@end
