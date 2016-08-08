//
//  SecondViewController.m
//  PassValueByDelegate
//
//  Created by 唐韧 on 12-8-28.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
#import "UserEntity.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize nameTextField;
@synthesize ageTextFiled;
@synthesize gendarTextField;
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationItem.title = @"Second";
    
}

- (void)viewDidUnload
{
    [self setNameTextField:nil];
    [self setAgeTextFiled:nil];
    [self setGendarTextField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (void)dealloc {
    [nameTextField release];
    [ageTextFiled release];
    [gendarTextField release];
    [super dealloc];
}

- (IBAction)okBtnClicked:(id)sender {
    UserEntity *userEntity = [[UserEntity alloc] init];
    userEntity.userName = self.nameTextField.text;
    userEntity.gendar = self.gendarTextField.text;
    userEntity.age = [self.ageTextFiled.text intValue];
    
    //通过委托协议传值
    [self.delegate passValue:userEntity];
    //退回到第一个窗口
    [self.navigationController popViewControllerAnimated:YES];
    
    [userEntity release];
}

/*单击屏幕其他区域关闭键盘的方法
 实现方法是：首先选中xib文件的view，设置class为UIControl
 然后在事件中选择Touch Down拖线到.h文件中声明该方法，最后实现下面即可
 */
- (IBAction)closeKeyboard:(id)sender {
    [self.nameTextField resignFirstResponder];
    [self.ageTextFiled resignFirstResponder];
    [self.gendarTextField resignFirstResponder];
}

@end
