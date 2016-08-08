//
//  SecondViewController.h
//  PassValueByDelegate
//
//  Created by 唐韧 on 12-8-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PassValueDelegate.h"

@interface SecondViewController : UIViewController

@property (retain, nonatomic) IBOutlet UITextField *nameTextField;
@property (retain, nonatomic) IBOutlet UITextField *ageTextFiled;
@property (retain, nonatomic) IBOutlet UITextField *gendarTextField;

//这里用assign而不用retain是为了防止引起循环引用。
@property(nonatomic,assign) NSObject<PassValueDelegate> *delegate;

- (IBAction)okBtnClicked:(id)sender;
- (IBAction)closeKeyboard:(id)sender;

@end
